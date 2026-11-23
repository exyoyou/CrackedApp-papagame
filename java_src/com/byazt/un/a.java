package com.byazt.un;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bzd.x;
import com.byazt.dna.qp;
import com.byazt.ete.bx;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.pu;
import com.byazt.ete.xd;
import com.byazt.ff.RoundImageView;
import com.byazt.ff.TTProgressBar;
import com.byazt.jr.SSRenderTextureView;
import com.byazt.kft.TTLottieVideoContainer;
import com.byazt.kft.UpieVideoView;
import com.byazt.lbn.TTViewStub;
import com.byazt.nc.u;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.my;
import com.byazt.omf.rl;
import com.byazt.ouz.gu;
import com.byazt.sgn.yp;
import com.byazt.sgn.z;
import com.byazt.yj.gr;
import com.byazt.yj.m;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 96, 34})
public class a implements com.byazt.jr.c, com.byazt.dh.tt<ic>, qp.c, yp.c, z.tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImageView f20778a;
    public RelativeLayout aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f20779b;
    public RelativeLayout bm;
    public TextView bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f20780c;
    public com.byazt.uz.c cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.byazt.pop.ve f20781d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public View f20782da;
    public com.byazt.dh.ve eo;
    public EnumSet<com.byazt.dh.tt.c> gr;
    public int gt;
    public int gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f20783h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public TextView f20784hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f20785i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public RoundImageView f20786ic;
    public com.byazt.ua.c.InterfaceC0445c kk;
    public int kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f20787l;
    public RelativeLayout lo;
    public TTViewStub lr;
    public TextView lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TTViewStub f20788m;
    public tt md;
    public int my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f20789n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public View f20790nb;
    public int nu;
    public com.byazt.hkv.c or;
    public final int os;
    public final int oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public z f20791p;
    public TextView pf;
    public RoundImageView pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public com.byazt.hkv.c f20792q;
    public boolean qp;
    public volatile boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public AtomicBoolean f20793r;
    public int rh;
    public boolean rl;
    public RoundImageView sl;
    public TTViewStub sp;
    public NativeVideoTsView.c sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f20794t;
    public String tk;
    public TextView to;
    public com.byazt.jr.tt tt;
    public sp tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f20795u;
    public View uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f20796v;
    public ImageView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public View f20797x;
    public TextView yp;
    public Context yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public TTProgressBar f20798z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public com.byazt.hkv.c f20799zb;
    public ic zm;

    public a(Context context, View view, boolean z10, EnumSet<com.byazt.dh.tt.c> enumSet, ic icVar, com.byazt.dh.ve veVar, boolean z11, com.byazt.hkv.c cVar) {
        this.rl = true;
        this.f20783h = true;
        this.qp = true;
        this.f20796v = 1;
        this.os = 2;
        this.oz = 3;
        this.f20793r = new AtomicBoolean(false);
        if (this instanceof n) {
            return;
        }
        this.yv = gt.getContext().getApplicationContext();
        uj(z11);
        this.f20780c = view;
        this.rl = z10;
        this.gr = enumSet == null ? EnumSet.noneOf(com.byazt.dh.tt.c.class) : enumSet;
        this.eo = veVar;
        this.f20792q = cVar;
        this.zm = icVar;
        h();
        uj(8);
        c(context, this.f20780c, icVar);
        uj();
        m();
    }

    private boolean bx() {
        ic icVar;
        return this.f20783h && this.f20782da != null && (icVar = this.zm) != null && icVar.ir() == 1;
    }

    private void cu() {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ic icVar = this.zm;
        if (icVar != null && com.byazt.ex.c.c(icVar)) {
            String strI = bx.i(this.zm);
            if (!TextUtils.isEmpty(strI)) {
                com.byazt.xky.tt.c(strI).to(this.f20786ic);
            }
            String strVe = bx.ve(this.zm);
            String strX = bx.x(this.zm);
            if (!TextUtils.isEmpty(strVe)) {
                pf.c(this.f20784hd, strVe);
            }
            if (this.aw == null) {
                return;
            }
            com.byazt.xky.tt.c(strX).type(2).to(new gr<Bitmap>() { // from class: com.byazt.un.a.10
                @Override // com.byazt.yj.gr
                public void onFailed(int i10, String str, Throwable th) {
                    a aVar = a.this;
                    com.byazt.ddx.uj.c(aVar.zm, aVar.tk, i10, str);
                }

                @Override // com.byazt.yj.gr
                public void onSuccess(m<Bitmap> mVar) {
                    Bitmap bitmapC = com.byazt.or.tt.c(a.this.yv, mVar.getResult(), 25);
                    if (bitmapC == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(a.this.aw.getResources(), bitmapC);
                    x.c(new Runnable() { // from class: com.byazt.un.a.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.aw != null) {
                                a.this.aw.setBackground(bitmapDrawable);
                            }
                        }
                    });
                    a aVar = a.this;
                    com.byazt.ddx.uj.uj(aVar.zm, aVar.tk, System.currentTimeMillis() - jCurrentTimeMillis);
                }
            }, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        x.c(new com.byazt.bwm.sp("native_video_layout_download_listener") { // from class: com.byazt.un.a.1
            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                if (aVar.f20781d == null) {
                    aVar.f20781d = com.byazt.yih.x.c(aVar.yv, aVar.zm, aVar.tk);
                }
                com.byazt.hkv.c cVar = a.this.f20799zb;
                if (cVar != null) {
                    ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(a.this.f20781d);
                }
                com.byazt.hkv.c cVar2 = a.this.or;
                if (cVar2 != null) {
                    ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).c(a.this.f20781d);
                }
                if (a.this.kk != null) {
                    a aVar2 = a.this;
                    aVar2.f20781d.c(aVar2.kk);
                }
                com.byazt.pop.ve veVar = a.this.f20781d;
                if (veVar != null) {
                    veVar.c();
                }
            }
        });
    }

    private boolean eo() {
        ic icVar = this.zm;
        return icVar != null && pu.a(icVar) == null && pu.sp(this.zm) == null && this.zm.vp() == 1 && ic.ve(this.zm);
    }

    private void h() {
        this.kp = 1;
        String strTt = nb.tt(this.zm);
        String str = "embeded_ad_landingpage";
        if (strTt == null) {
            strTt = this.f20783h ? com.byazt.dyf.tt.AD_TAG_FEED : "embeded_ad_landingpage";
        }
        this.kp = nb.uj(strTt);
        if (!this.f20783h && strTt.equals("draw_ad")) {
            str = "draw_ad_landingpage";
        } else if (this.f20783h || !strTt.equals(com.byazt.dyf.tt.AD_TAG_FEED)) {
            str = strTt;
        }
        this.tk = str;
    }

    private void nb() {
        if (qp()) {
            pf.c((View) this.ve, 8);
            if (!gt.tt().pe()) {
                pf.c(this.uj, 8);
                pf.c(this.f20789n, 8);
                pf.c((View) this.f20778a, 8);
                return;
            }
        }
        pf.c(this.uj, 0);
        pf.c((View) this.aw, 8);
        pf.a(this.uj);
        if (qp() && gt.tt().pe()) {
            pf.c(this.f20789n, 8);
        } else {
            pf.a(this.f20789n);
        }
        if (this.f20778a == null || TextUtils.isEmpty(xd.tt(this.zm))) {
            return;
        }
        pf.a(this.f20778a);
        com.byazt.xky.tt.c(xd.tt(this.zm)).to(this.f20778a);
        c(this.f20778a, xd.tt(this.zm));
    }

    private boolean or() {
        if (this.zm == null) {
            return false;
        }
        if ("fullscreen_interstitial_ad".equals(this.tk) || "rewarded_video".equals(this.tk)) {
            int iBy = this.zm.by();
            float fFr = this.zm.fr();
            if (iBy == 1 && fFr == 100.0f) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pf() {
        try {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            layoutParams.addRule(15);
            View view = this.f20782da;
            if (view != null) {
                view.setLayoutParams(layoutParams);
            }
            View view2 = this.f20780c;
            if (view2 == null) {
                return;
            }
            int measuredWidth = view2.getMeasuredWidth();
            int measuredHeight = this.f20780c.getMeasuredHeight();
            int iVe = pf.ve(this.yv, 200.0f);
            int iVe2 = pf.ve(this.yv, 331.0f);
            int iVe3 = pf.ve(this.yv, 110.0f);
            int iVe4 = pf.ve(this.yv, 100.0f);
            if (measuredWidth >= iVe && measuredHeight >= iVe2) {
                a(1);
                return;
            }
            if (measuredWidth > iVe3 && measuredHeight > iVe4) {
                a(3);
                return;
            }
            a(2);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    private boolean qp() {
        return TextUtils.equals(this.tk, "splash_ad") || TextUtils.equals(this.tk, "cache_splash_ad");
    }

    private void zb() {
        if (this.yv == null || this.f20780c == null) {
            return;
        }
        View view = new View(this.yv) { // from class: com.byazt.un.a.8
            public final AtomicBoolean tt = new AtomicBoolean(true);

            private void c() {
                if (a.this.zm == null) {
                    return;
                }
                if (this.tt.getAndSet(false) && (com.byazt.ex.c.c(a.this.zm) || a.this.zm.i() == 4)) {
                    a.this.d();
                }
                rl.tt(a.this.zm.lw(), a.this.tx, sp.class);
            }

            private void tt() {
                com.byazt.pop.ve veVar;
                if (this.tt.getAndSet(true) || (veVar = a.this.f20781d) == null) {
                    return;
                }
                veVar.ve();
            }

            @Override // android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                a.this.f20793r.set(false);
                c();
            }

            @Override // android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                a.this.f20793r.set(true);
                tt();
            }

            @Override // android.view.View
            public void onFinishTemporaryDetach() {
                super.onFinishTemporaryDetach();
                c();
            }

            @Override // android.view.View
            public void onMeasure(int i10, int i11) {
                super.onMeasure(0, 0);
            }

            @Override // android.view.View
            public void onStartTemporaryDetach() {
                super.onStartTemporaryDetach();
                tt();
            }

            @Override // android.view.View
            public void onWindowFocusChanged(boolean z10) {
                super.onWindowFocusChanged(z10);
                com.byazt.pop.ve veVar = a.this.f20781d;
                if (veVar == null || !z10) {
                    return;
                }
                veVar.tt();
            }
        };
        View view2 = this.f20780c;
        if (view2 instanceof ViewGroup) {
            ((ViewGroup) view2).addView(view, 0, new RelativeLayout.LayoutParams(0, 0));
        }
    }

    public void a() {
    }

    public void c(long j10) {
    }

    @Override // com.byazt.sgn.z.tt
    public boolean da() {
        return false;
    }

    @TargetApi(14)
    public void gr() {
        pf.c(this.f20780c, 0);
        com.byazt.jr.tt ttVar = this.tt;
        if (ttVar != null) {
            View view = ttVar.getView();
            pf.c(view, 8);
            pf.c(view, 0);
        }
    }

    public void gt() {
        z zVar = this.f20791p;
        if (zVar != null) {
            zVar.c(false);
        }
    }

    public void gu() {
        if (com.byazt.ex.c.c(this.zm)) {
            qy();
        } else {
            pf.c((View) this.aw, 8);
            pf.a(this.uj);
            pf.a(this.f20789n);
        }
        ImageView imageView = this.ve;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        pf.c((View) this.ve, 8);
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
    }

    public void m() {
        View view;
        h();
        if (com.byazt.ex.c.c(this.zm)) {
            com.byazt.hkv.c cVar = this.f20792q;
            if (cVar != null) {
                this.f20799zb = cVar;
            } else {
                this.f20799zb = new com.byazt.hkv.c(this.yv, this.zm, this.tk, this.kp);
            }
            com.byazt.nat.c.InterfaceC0376c interfaceC0376c = new com.byazt.nat.c.InterfaceC0376c() { // from class: com.byazt.un.a.5
                @Override // com.byazt.nat.c.InterfaceC0376c
                public void c(View view2, int i10) {
                    if (a.this.sv != null) {
                        a.this.sv.c(view2, i10);
                    }
                }
            };
            ((com.byazt.nat.c) this.f20799zb.c(com.byazt.nat.c.class)).c(interfaceC0376c);
            ic icVar = this.zm;
            if (icVar != null) {
                rl.tt(icVar.lw(), interfaceC0376c, com.byazt.nat.c.InterfaceC0376c.class);
            }
            if (this.f20792q == null && (view = this.f20780c) != null) {
                view.setOnClickListener(this.f20799zb);
                this.f20780c.setOnTouchListener(this.f20799zb);
            }
            if (pf.uj(this.bm)) {
                this.bm.setOnClickListener(this.f20799zb);
                this.bm.setOnTouchListener(this.f20799zb);
                return;
            }
            return;
        }
        zb();
        com.byazt.hkv.c cVar2 = new com.byazt.hkv.c(this.yv, this.zm, this.tk, this.kp);
        this.f20799zb = cVar2;
        ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).tt(true);
        com.byazt.nat.c.InterfaceC0376c interfaceC0376c2 = new com.byazt.nat.c.InterfaceC0376c() { // from class: com.byazt.un.a.6
            @Override // com.byazt.nat.c.InterfaceC0376c
            public void c(View view2, int i10) {
                if (a.this.sv != null) {
                    a.this.sv.c(view2, i10);
                }
            }
        };
        ((com.byazt.nat.c) this.f20799zb.c(com.byazt.nat.c.class)).c(interfaceC0376c2);
        ic icVar2 = this.zm;
        if (icVar2 != null) {
            rl.tt(icVar2.lw(), interfaceC0376c2, com.byazt.nat.c.InterfaceC0376c.class);
        }
        tt(this.f20799zb);
        if (this.f20783h) {
            ((com.byazt.nat.c) this.f20799zb.c(com.byazt.nat.c.class)).ve(true);
        } else {
            ((com.byazt.nat.c) this.f20799zb.c(com.byazt.nat.c.class)).ve(false);
            ((com.byazt.nat.c) this.f20799zb.c(com.byazt.nat.c.class)).c(true);
        }
        if (eo()) {
            com.byazt.hkv.c cVar3 = new com.byazt.hkv.c(this.yv, this.zm, this.tk, this.kp);
            this.or = cVar3;
            tt(cVar3);
            this.tx = new sp(this);
            ((com.byazt.nat.c) this.or.c(com.byazt.nat.c.class)).tt(true);
            com.byazt.nat.c.InterfaceC0376c interfaceC0376c3 = new com.byazt.nat.c.InterfaceC0376c() { // from class: com.byazt.un.a.7
                @Override // com.byazt.nat.c.InterfaceC0376c
                public void c(View view2, int i10) {
                    if (a.this.sv != null) {
                        a.this.sv.c(view2, i10);
                    }
                }
            };
            ((com.byazt.nat.c) this.or.c(com.byazt.nat.c.class)).c(interfaceC0376c3);
            ic icVar3 = this.zm;
            if (icVar3 != null) {
                rl.tt(icVar3.lw(), interfaceC0376c3, com.byazt.nat.c.InterfaceC0376c.class);
            }
            if (this.f20783h) {
                ((com.byazt.nat.c) this.or.c(com.byazt.nat.c.class)).ve(true);
            } else {
                ((com.byazt.nat.c) this.or.c(com.byazt.nat.c.class)).ve(false);
            }
            c(this.or);
            View view2 = this.f20780c;
            if (view2 != null) {
                view2.setOnClickListener(this.or);
                this.f20780c.setOnTouchListener(this.or);
            }
        }
    }

    public boolean md() {
        return !this.gr.contains(com.byazt.dh.tt.c.alwayShowMediaView) || this.rl;
    }

    public void my() {
        if (this.md == null || this.f20791p != null) {
            return;
        }
        System.currentTimeMillis();
        z zVar = new z();
        this.f20791p = zVar;
        zVar.c(this.yv, this.f20780c);
        this.f20791p.c(this.md, this);
        System.currentTimeMillis();
    }

    public void n() {
    }

    public com.byazt.jr.tt nu() {
        return this.tt;
    }

    public void p() {
        if (qp()) {
            pf.c((View) this.ve, 8);
            pf.n(this.uj);
            pf.n(this.f20789n);
            ImageView imageView = this.f20778a;
            if (imageView != null) {
                pf.n(imageView);
            }
        }
    }

    public void qy() {
        pf.c(this.uj, 8);
        pf.c((View) this.aw, 0);
        cu();
    }

    public void rh() {
        if (this.zm == null) {
            return;
        }
        if (this.f20779b) {
            pf.c((View) this.to, 8);
        }
        if (com.byazt.ex.c.c(this.zm)) {
            String strI = bx.i(this.zm);
            String strVe = bx.ve(this.zm);
            String strX = bx.x(this.zm);
            pf.c(this.f20787l, 0);
            pf.c((View) this.lo, 0);
            if (!TextUtils.isEmpty(strI)) {
                com.byazt.xky.tt.c(strI).to(this.pu);
            }
            if (!TextUtils.isEmpty(strVe)) {
                pf.c(this.lt, strVe);
            }
            if (this.lo == null) {
                return;
            }
            com.byazt.xky.tt.c(strX).type(2).to(new gr<Bitmap>() { // from class: com.byazt.un.a.9
                @Override // com.byazt.yj.gr
                public void onFailed(int i10, String str, Throwable th) {
                }

                @Override // com.byazt.yj.gr
                public void onSuccess(m<Bitmap> mVar) {
                    Bitmap bitmapC = com.byazt.or.tt.c(a.this.yv, mVar.getResult(), 25);
                    if (bitmapC == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(a.this.lo.getResources(), bitmapC);
                    x.c(new Runnable() { // from class: com.byazt.un.a.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.lo != null) {
                                a.this.lo.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    public boolean rl() {
        if (this.md != null) {
            return true;
        }
        com.byazt.nr.m.uj("NewLiveViewLayout", "callback is null");
        return false;
    }

    public boolean sl() {
        return this.rl;
    }

    @Override // com.byazt.sgn.z.tt
    public void t() {
        c(true, false);
    }

    public void tt(ViewGroup viewGroup) {
    }

    public boolean u() {
        return this.qy;
    }

    public void ve(boolean z10) {
    }

    @Override // com.byazt.sgn.yp.c
    public void yp() {
    }

    public void yv() {
        ic icVar = this.zm;
        if (icVar == null) {
            return;
        }
        if (this.zm.wn() != 5 ? icVar.wn() == 1 && kp.nu(this.zm) : true) {
            c(false, this.rl);
            c(this.f20780c, gt.getContext());
            if (this.f20785i == null || TextUtils.isEmpty(xd.tt(this.zm))) {
                return;
            }
            pf.c(this.f20797x, 0);
            pf.c((View) this.f20785i, 0);
            pf.c(this.f20782da, 8);
            com.byazt.xky.tt.c(xd.tt(this.zm)).to(this.f20785i);
            c(this.f20785i, xd.tt(this.zm));
        }
    }

    @Override // com.byazt.sgn.yp.c
    public boolean z() {
        z zVar = this.f20791p;
        return zVar != null && zVar.c();
    }

    public void zm() {
        pf.c(this.f20797x, 8);
        pf.c((View) this.f20785i, 8);
        pf.c(this.f20782da, 8);
        pf.c((View) this.sl, 8);
        pf.c((View) this.f20794t, 8);
        pf.c((View) this.f20795u, 8);
        pf.c((View) this.yp, 8);
        pf.c(this.f20787l, 8);
        pf.c((View) this.lo, 8);
    }

    private int sp(int i10) {
        if (this.my <= 0 || this.gt <= 0) {
            return 0;
        }
        int iVe = pf.ve(this.yv, 228.0f);
        int iVe2 = pf.ve(this.yv, 160.0f);
        int i11 = (int) (this.gt * ((i10 * 1.0f) / this.my));
        if (i11 > iVe) {
            return iVe;
        }
        return i11 < iVe2 ? iVe2 : i11;
    }

    private void x(int i10) {
        pf.c(this.f20782da, i10);
        pf.c(this.f20790nb, i10);
    }

    public void c(long j10, long j11) {
    }

    public void i() {
        TTProgressBar tTProgressBar = this.f20798z;
        if (tTProgressBar != null) {
            tTProgressBar.setProgress(0);
            this.f20798z.setSecondaryProgress(0);
        }
        uj(8);
        if (md()) {
            this.tt.setVisibility(8);
        }
        ImageView imageView = this.f20778a;
        if (imageView != null) {
            imageView.setImageDrawable(null);
            this.f20778a.setBackground(null);
        }
        ImageView imageView2 = this.f20785i;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
            this.f20785i.setBackground(null);
        }
        uj(8);
        pf.c(this.f20797x, 8);
        pf.c((View) this.f20785i, 8);
        pf.c(this.f20782da, 8);
        pf.c((View) this.sl, 8);
        pf.c((View) this.f20794t, 8);
        pf.c((View) this.f20795u, 8);
        pf.c(this.f20787l, 8);
        pf.c((View) this.lo, 8);
        z zVar = this.f20791p;
        if (zVar != null) {
            zVar.c(true);
        }
    }

    public void tt(boolean z10) {
    }

    public void uj() {
        this.tt.c(this);
        ImageView imageView = this.ve;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.un.a.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (a.this.rl()) {
                        TextView textView = a.this.yp;
                        if (textView == null || textView.getVisibility() != 0) {
                            a aVar = a.this;
                            aVar.md.c(aVar, view);
                        }
                    }
                }
            });
        }
    }

    public boolean ve(int i10) {
        return false;
    }

    public void a(int i10) {
        ic icVar;
        if (this.sl == null || (icVar = this.zm) == null || icVar.te() == null || this.zm.te().c() == null) {
            return;
        }
        if (i10 == 1) {
            int iVe = pf.ve(this.yv, 71.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iVe, iVe);
            layoutParams.addRule(14);
            this.sl.setLayoutParams(layoutParams);
            this.f20794t.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.bottomMargin = pf.ve(this.yv, 16.0f);
            layoutParams2.topMargin = pf.ve(this.yv, 8.0f);
            layoutParams2.leftMargin = pf.ve(this.yv, 16.0f);
            layoutParams2.rightMargin = pf.ve(this.yv, 16.0f);
            layoutParams2.addRule(3, this.sl.getId());
            layoutParams2.addRule(14);
            this.f20795u.setLayoutParams(layoutParams2);
            this.f20795u.setTextSize(16.0f);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, pf.ve(this.yv, 32.0f));
            layoutParams3.addRule(14);
            layoutParams3.addRule(3, this.f20795u.getId());
            layoutParams3.leftMargin = pf.ve(this.yv, 20.0f);
            layoutParams3.rightMargin = pf.ve(this.yv, 20.0f);
            this.yp.setPadding(pf.ve(this.yv, 36.0f), pf.ve(this.yv, 7.0f), pf.ve(this.yv, 36.0f), pf.ve(this.yv, 8.0f));
            this.yp.setLayoutParams(layoutParams3);
            this.yp.setEllipsize(TextUtils.TruncateAt.END);
            this.yp.setSingleLine(true);
            this.yp.setTextSize(14.0f);
            return;
        }
        if (i10 == 2) {
            int iVe2 = pf.ve(this.yv, 40.0f);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iVe2, iVe2);
            layoutParams4.addRule(14);
            this.sl.setLayoutParams(layoutParams4);
            this.f20794t.setLayoutParams(layoutParams4);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.bottomMargin = pf.ve(this.yv, 8.0f);
            layoutParams5.topMargin = pf.ve(this.yv, 8.0f);
            layoutParams5.addRule(3, this.sl.getId());
            layoutParams5.addRule(14);
            this.f20795u.setLayoutParams(layoutParams5);
            this.f20795u.setTextSize(10.0f);
            pf.c((View) this.yp, 8);
            return;
        }
        int iVe3 = pf.ve(this.yv, 49.0f);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(iVe3, iVe3);
        layoutParams6.addRule(14);
        this.sl.setLayoutParams(layoutParams6);
        this.f20794t.setLayoutParams(layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.bottomMargin = pf.ve(this.yv, 8.0f);
        layoutParams7.topMargin = pf.ve(this.yv, 8.0f);
        layoutParams7.addRule(3, this.sl.getId());
        layoutParams7.addRule(14);
        this.f20795u.setLayoutParams(layoutParams7);
        this.f20795u.setTextSize(13.0f);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, pf.ve(this.yv, 28.0f));
        layoutParams8.addRule(13);
        layoutParams8.addRule(3, this.f20795u.getId());
        int iVe4 = pf.ve(this.yv, 20.0f);
        int iVe5 = pf.ve(this.yv, 25.0f);
        int iVe6 = pf.ve(this.yv, 6.0f);
        TextPaint paint = this.yp.getPaint();
        Rect rect = new Rect();
        CharSequence text = this.yp.getText();
        if (TextUtils.isEmpty(text)) {
            text = "";
        }
        String string = text.toString();
        paint.getTextBounds(string, 0, string.length(), rect);
        this.yp.setTextSize(13.0f);
        if (this.yp.getWidth() > (iVe5 * 2) + rect.width() && this.yp.getHeight() > (iVe6 * 2) + rect.height()) {
            layoutParams8.leftMargin = iVe4;
            layoutParams8.rightMargin = iVe4;
            this.yp.setPadding(iVe5, pf.ve(this.yv, 5.0f), iVe5, iVe6);
        }
        this.yp.setEllipsize(TextUtils.TruncateAt.END);
        this.yp.setSingleLine(true);
        this.yp.setLayoutParams(layoutParams8);
    }

    @Override // com.byazt.sgn.yp.c
    public void c(View view, boolean z10) {
    }

    public void n(int i10) {
        pf.c(this.f20780c, 0);
        com.byazt.jr.tt ttVar = this.tt;
        if (ttVar != null) {
            ttVar.setVisibility(i10);
        }
    }

    private void tt(com.byazt.hkv.c cVar) {
        ic icVar;
        if (cVar == null || (icVar = this.zm) == null) {
            return;
        }
        com.byazt.nc.yp ypVarC = com.byazt.btt.c.c(Integer.valueOf(icVar.hashCode()));
        if (ypVarC instanceof gu) {
            ((gu) ypVarC).setAdShowCallBack((com.byazt.vis.ve) cVar.c(com.byazt.vis.ve.class));
        }
    }

    public void c(ViewGroup viewGroup) {
    }

    public void ve(int i10, int i11) {
        this.my = i10;
        this.gt = i11;
    }

    public void x() {
        if (com.byazt.ex.c.c(this.zm)) {
            pf.c((View) this.aw, 8);
        } else {
            pf.n(this.uj);
        }
    }

    public void c(String str) {
    }

    public void uj(boolean z10) {
        this.f20783h = z10;
        if (z10) {
            com.byazt.hkv.c cVar = this.f20799zb;
            if (cVar != null) {
                ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).ve(true);
            }
            com.byazt.hkv.c cVar2 = this.or;
            if (cVar2 != null) {
                ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).ve(true);
                return;
            }
            return;
        }
        com.byazt.hkv.c cVar3 = this.f20799zb;
        if (cVar3 != null) {
            ((com.byazt.nat.c) cVar3.c(com.byazt.nat.c.class)).ve(true);
            ((com.byazt.nat.c) this.f20799zb.c(com.byazt.nat.c.class)).c(true);
        }
        com.byazt.hkv.c cVar4 = this.or;
        if (cVar4 != null) {
            ((com.byazt.nat.c) cVar4.c(com.byazt.nat.c.class)).ve(true);
            ((com.byazt.nat.c) this.or.c(com.byazt.nat.c.class)).c(true);
        }
    }

    public void n(boolean z10) {
        this.f20779b = z10;
    }

    public void ve(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.f20780c.getParent() == null) {
            viewGroup.addView(this.f20780c);
        }
        uj(0);
    }

    @Override // com.byazt.dh.tt
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void c(ic icVar, WeakReference weakReference, boolean z10) {
        c2(icVar, (WeakReference<Context>) weakReference, z10);
    }

    public void sp() {
        if (com.byazt.ex.c.c(this.zm)) {
            qy();
        } else {
            nb();
        }
        ImageView imageView = this.ve;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        pf.c((View) this.ve, 8);
    }

    private void c(com.byazt.hkv.c cVar) {
        ic icVar;
        if (cVar == null || (icVar = this.zm) == null || !com.byazt.ex.c.c(icVar)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("click_live_element", "click_live_feed");
        ((com.byazt.vis.c) cVar.c(com.byazt.vis.c.class)).c(map);
    }

    private void tt(Context context, View view) {
        if (view == null) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(2114387888);
        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(2114387688);
        if (or()) {
            pf.c((View) relativeLayout, 0);
            pf.c((View) relativeLayout2, 8);
            this.aw = relativeLayout;
        } else {
            pf.c((View) relativeLayout2, 0);
            pf.c((View) relativeLayout, 8);
            this.aw = relativeLayout2;
        }
        RelativeLayout relativeLayout3 = this.aw;
        if (relativeLayout3 == null) {
            return;
        }
        this.f20786ic = (RoundImageView) relativeLayout3.findViewById(2114387831);
        this.f20784hd = (TextView) this.aw.findViewById(2114387742);
        this.bm = (RelativeLayout) this.aw.findViewById(2114387693);
    }

    @Override // com.byazt.dh.tt
    public View ve() {
        return this.f20780c;
    }

    public void c(NativeVideoTsView.c cVar) {
        this.sv = cVar;
    }

    public void c(u uVar) {
        c(uVar, this.f20799zb);
        c(uVar, this.or);
    }

    private void c(u uVar, com.byazt.hkv.c cVar) {
        my interactionManager;
        if (cVar == null) {
            return;
        }
        ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(uVar);
        com.byazt.vis.ve veVar = (com.byazt.vis.ve) cVar.c(com.byazt.vis.ve.class);
        if ((uVar instanceof com.byazt.kyz.ve) && (interactionManager = ((com.byazt.kyz.ve) uVar).getInteractionManager()) != null) {
            interactionManager.c(veVar);
        }
    }

    public void uj(int i10) {
        this.gu = i10;
        pf.c(this.f20780c, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View, com.byazt.jr.tt] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.ViewGroup, android.widget.RelativeLayout] */
    public void c(Context context, View view, ic icVar) {
        ?? sSRenderTextureView;
        System.currentTimeMillis();
        if (view != null) {
            view.setKeepScreenOn(true);
        }
        if (com.byazt.ic.c.tt(icVar)) {
            sSRenderTextureView = new TTLottieVideoContainer(this.yv);
        } else if (com.byazt.ic.c.ve(icVar)) {
            sSRenderTextureView = new UpieVideoView(context, com.byazt.ic.c.i(icVar));
        } else {
            sSRenderTextureView = new SSRenderTextureView(this.yv);
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(sSRenderTextureView, 0, layoutParams);
            if (qp()) {
                view.setBackgroundColor(0);
            } else {
                view.setBackgroundColor(-16777216);
            }
        }
        pf.c((View) sSRenderTextureView, 8);
        this.tt = sSRenderTextureView;
        this.ve = (ImageView) view.findViewById(2114387626);
        this.f20798z = (TTProgressBar) view.findViewById(2114387653);
        this.uj = view.findViewById(2114387900);
        this.f20789n = view.findViewById(2114387631);
        this.f20778a = (ImageView) view.findViewById(2114387651);
        this.sp = (TTViewStub) view.findViewById(2114387744);
        this.lr = (TTViewStub) view.findViewById(2114387666);
        this.f20788m = (TTViewStub) view.findViewById(2114387828);
        if (com.byazt.ex.c.c(icVar)) {
            tt(context, view);
        }
        System.currentTimeMillis();
    }

    private void tt(View view, Context context) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.f20788m) == null || tTViewStub.getParent() == null || this.f20790nb != null) {
            return;
        }
        this.f20788m.c();
        this.f20790nb = view.findViewById(2114387674);
        this.pf = (TextView) view.findViewById(2114387868);
        this.bx = (TextView) view.findViewById(2114387842);
    }

    public a(Context context, View view, boolean z10, EnumSet<com.byazt.dh.tt.c> enumSet, ic icVar, com.byazt.dh.ve veVar, com.byazt.hkv.c cVar) {
        this(context, view, z10, enumSet, icVar, veVar, true, cVar);
    }

    public void tt(boolean z10, boolean z11) {
        ImageView imageView = this.ve;
        if (imageView != null) {
            if (z10) {
                com.byazt.nr.z.c(this.yv, "tt_new_play_video", imageView, 320);
            } else {
                com.byazt.nr.z.c(this.yv, "tt_new_pause_video", imageView, 320);
            }
        }
    }

    public void tt(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams;
        View view = this.f20780c;
        if (view == null || (layoutParams = view.getLayoutParams()) == null) {
            return;
        }
        if (i10 == -1 || i10 == -2 || i10 > 0) {
            layoutParams.width = i10;
        }
        if (i11 == -1 || i11 == -2 || i11 > 0) {
            layoutParams.height = i11;
        }
        this.f20780c.setLayoutParams(layoutParams);
    }

    public void tt(int i10) {
        com.byazt.nr.m.c("Progress", "setSeekProgress-percent=".concat(String.valueOf(i10)));
        pf.c((View) this.f20798z, 0);
        TTProgressBar tTProgressBar = this.f20798z;
        if (tTProgressBar != null) {
            tTProgressBar.setProgress(i10);
        }
    }

    @Override // com.byazt.dh.tt
    public void tt() {
        if (qp()) {
            pf.c(this.uj, 8);
            pf.c(this.f20789n, 8);
            pf.c((View) this.f20778a, 8);
            pf.c((View) this.ve, 8);
            return;
        }
        pf.c((View) this.aw, 8);
        pf.n(this.uj);
        pf.n(this.f20789n);
        ImageView imageView = this.f20778a;
        if (imageView != null) {
            pf.n(imageView);
        }
    }

    public void c(Context context, View view) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.lr) == null || tTViewStub.getParent() == null || this.f20787l != null) {
            return;
        }
        this.f20787l = this.lr.c();
        this.lo = (RelativeLayout) view.findViewById(2114387953);
        this.pu = (RoundImageView) view.findViewById(2114387958);
        this.lt = (TextView) view.findViewById(2114387926);
        this.to = (TextView) view.findViewById(2114387877);
    }

    public void c(View view, Context context) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.sp) == null || tTViewStub.getParent() == null || this.f20797x != null) {
            return;
        }
        this.f20797x = this.sp.c();
        this.sp.setVisibility(0);
        this.f20785i = (ImageView) view.findViewById(2114387804);
        this.f20782da = view.findViewById(2114387961);
        this.sl = (RoundImageView) view.findViewById(2114387664);
        this.f20794t = (TextView) view.findViewById(2114387957);
        this.f20795u = (TextView) view.findViewById(2114387764);
        this.yp = (TextView) view.findViewById(2114387686);
    }

    public boolean c(int i10, com.byazt.jzl.uj ujVar, boolean z10) {
        z zVar = this.f20791p;
        return zVar == null || zVar.c(i10, ujVar, z10);
    }

    public void c(com.byazt.dh.c cVar) {
        if (cVar instanceof tt) {
            this.md = (tt) cVar;
            my();
        }
    }

    public void c(int i10, int i11) {
        if (i10 == -1) {
            i10 = pf.uj(this.yv);
        }
        if (i10 <= 0) {
            return;
        }
        this.nu = i10;
        if (!sl() && !da() && !this.gr.contains(com.byazt.dh.tt.c.fixedSize)) {
            this.rh = sp(i10);
        } else {
            this.rh = i11;
        }
        tt(this.nu, this.rh);
    }

    @Override // com.byazt.dh.tt
    public void c() {
        c(false, this.rl);
        zm();
    }

    @Override // com.byazt.dh.tt
    public void c(boolean z10) {
        this.qp = z10;
    }

    public void c(final ImageView imageView, String str) {
        if (imageView == null || !com.byazt.ic.c.c(this.zm) || com.byazt.ic.c.sp(this.zm)) {
            return;
        }
        com.byazt.xky.tt.c(str).config(Bitmap.Config.ARGB_4444).type(2).to(new gr<Bitmap>() { // from class: com.byazt.un.a.12
            @Override // com.byazt.yj.gr
            public void onFailed(int i10, String str2, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(m<Bitmap> mVar) {
                Bitmap result;
                if (mVar == null || (result = mVar.getResult()) == null) {
                    return;
                }
                final Bitmap bitmapC = com.byazt.or.tt.c(a.this.yv, result, 25);
                x.c(new Runnable() { // from class: com.byazt.un.a.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (bitmapC != null) {
                            imageView.setBackground(new BitmapDrawable(bitmapC));
                        }
                    }
                });
            }
        }, 4);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method */
    public void c2(ic icVar, WeakReference<Context> weakReference, boolean z10) {
        String strOp;
        ic icVar2;
        if (icVar == null || qp()) {
            return;
        }
        c(false, this.rl);
        if (com.byazt.ex.c.c(icVar)) {
            c(gt.getContext(), this.f20780c);
            rh();
            return;
        }
        c(this.f20780c, gt.getContext());
        View view = this.f20797x;
        if (view != null) {
            pf.c(view, 0);
        }
        ImageView imageView = this.f20785i;
        if (imageView != null) {
            pf.c((View) imageView, 0);
        }
        if (nb.ve(this.zm)) {
            tt(this.f20780c, gt.getContext());
            pf.c(this.f20782da, 8);
            pf.c((View) this.f20785i, 0);
            pf.c(this.f20790nb, 0);
            pf.c((View) this.pf, 0);
            pf.c((View) this.bx, 0);
            if (this.bx != null && rh.ve(gt.getContext()) == 0) {
                pf.c((View) this.bx, 8);
            }
            View view2 = this.f20797x;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.un.a.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        com.byazt.dh.ve veVar = a.this.eo;
                        if (veVar != null) {
                            ((com.byazt.dh.c) veVar).c();
                            com.byazt.uz.c cVar = a.this.cu;
                            if (cVar != null) {
                                cVar.c();
                            }
                        }
                    }
                });
            }
            if (this.f20785i != null && !TextUtils.isEmpty(xd.tt(this.zm))) {
                if (com.byazt.ic.c.tt(icVar)) {
                    com.byazt.xky.tt.c(xd.tt(this.zm)).to(this.f20785i);
                    c(this.f20785i, xd.tt(this.zm));
                } else {
                    com.byazt.vv.tt.c(2147483647L, xd.c(this.zm), new com.byazt.vv.tt.InterfaceC0466tt() { // from class: com.byazt.un.a.3
                        @Override // com.byazt.vv.tt.InterfaceC0466tt
                        public void c(Bitmap bitmap) {
                            if (bitmap == null) {
                                com.byazt.xky.tt.c(xd.tt(a.this.zm)).to(a.this.f20785i);
                                return;
                            }
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) a.this.f20785i.getLayoutParams();
                            if (bitmap.getWidth() > bitmap.getHeight()) {
                                float height = (bitmap.getHeight() * pf.uj(gt.getContext())) / bitmap.getWidth();
                                layoutParams.width = pf.uj(gt.getContext());
                                layoutParams.height = (int) height;
                                layoutParams.addRule(13);
                                a.this.f20785i.setLayoutParams(layoutParams);
                            }
                            a.this.f20785i.setImageBitmap(bitmap);
                        }
                    });
                }
            }
        } else {
            pf.c(this.f20782da, 0);
            if (this.f20785i != null && !TextUtils.isEmpty(xd.tt(this.zm))) {
                com.byazt.xky.tt.c(xd.tt(this.zm)).to(this.f20785i);
                c(this.f20785i, xd.tt(this.zm));
            }
            if (bx()) {
                this.f20782da.post(new Runnable() { // from class: com.byazt.un.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.pf();
                    }
                });
            }
        }
        if (!TextUtils.isEmpty(icVar.an())) {
            strOp = icVar.an();
        } else if (!TextUtils.isEmpty(icVar.v_())) {
            strOp = icVar.v_();
        } else {
            strOp = !TextUtils.isEmpty(icVar.op()) ? icVar.op() : "";
        }
        if (this.sl != null && (icVar2 = this.zm) != null && icVar2.te() != null && this.zm.te().c() != null) {
            pf.c((View) this.sl, 0);
            pf.c((View) this.f20794t, 4);
            com.byazt.xky.tt.c(this.zm.te()).to(this.sl);
            if (eo()) {
                this.sl.setOnClickListener(this.or);
                this.sl.setOnTouchListener(this.or);
            } else {
                this.sl.setOnClickListener(this.f20799zb);
                this.sl.setOnTouchListener(this.f20799zb);
            }
        } else if (!TextUtils.isEmpty(strOp)) {
            pf.c((View) this.sl, 4);
            pf.c((View) this.f20794t, 0);
            TextView textView = this.f20794t;
            if (textView != null) {
                textView.setText(strOp.substring(0, 1));
                if (eo()) {
                    this.f20794t.setOnClickListener(this.or);
                    this.f20794t.setOnTouchListener(this.or);
                } else {
                    this.f20794t.setOnClickListener(this.f20799zb);
                    this.f20794t.setOnTouchListener(this.f20799zb);
                }
            }
        }
        if (this.f20795u != null && !TextUtils.isEmpty(strOp)) {
            this.f20795u.setText(strOp);
        }
        pf.c((View) this.f20795u, 0);
        pf.c((View) this.yp, 0);
        String strTj = icVar.tj();
        if (TextUtils.isEmpty(strTj)) {
            int i10 = icVar.i();
            if (i10 != 4) {
                strTj = i10 != 5 ? "查看详情" : "立即拨打";
            } else {
                strTj = "立即下载";
            }
        }
        TextView textView2 = this.yp;
        if (textView2 != null) {
            textView2.setText(strTj);
            this.yp.setOnClickListener(this.f20799zb);
            this.yp.setOnTouchListener(this.f20799zb);
        }
        TextView textView3 = this.pf;
        if (textView3 != null) {
            textView3.setText(strTj);
            this.pf.setOnClickListener(this.f20799zb);
            this.pf.setOnTouchListener(this.f20799zb);
        }
        if (this.qp) {
            return;
        }
        x(4);
    }

    @Override // com.byazt.jr.c
    public void c(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.qy = true;
        if (rl()) {
            this.md.c(this, surfaceTexture);
        }
    }

    @Override // com.byazt.jr.c
    public boolean c(SurfaceTexture surfaceTexture) {
        this.qy = false;
        if (!rl()) {
            return true;
        }
        this.md.tt(this, surfaceTexture);
        return true;
    }

    public void c(boolean z10, boolean z11, boolean z12) {
        pf.c((View) this.f20798z, 0);
        pf.c((View) this.ve, (z10 && (pf.uj(this.uj) && pf.uj(this.aw))) ? 0 : 8);
    }

    public void c(boolean z10, boolean z11) {
        pf.c((View) this.f20798z, z10 ? 0 : 8);
        pf.c((View) this.ve, 8);
    }

    public void c(com.byazt.uz.c cVar) {
        this.cu = cVar;
        com.byazt.hkv.c cVar2 = this.f20799zb;
        if (cVar2 != null) {
            ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).c(cVar);
        }
    }

    @Override // com.byazt.dh.tt
    public void c(Drawable drawable) {
        View view = this.f20780c;
        if (view != null) {
            view.setBackgroundDrawable(drawable);
        }
    }

    @Override // com.byazt.dh.tt
    public void c(int i10) {
        pf.c((View) this.bm, i10);
    }

    public void c(com.byazt.ua.c.InterfaceC0445c interfaceC0445c) {
        this.kk = interfaceC0445c;
        com.byazt.pop.ve veVar = this.f20781d;
        if (veVar != null) {
            veVar.c(interfaceC0445c);
        }
    }
}
