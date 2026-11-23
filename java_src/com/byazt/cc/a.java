package com.byazt.cc;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.dna.qp;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.ete.os;
import com.byazt.ete.pu;
import com.byazt.ete.y;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.omf.AdSdkInitializerHolder;
import com.byazt.omf.gt;
import com.byazt.omf.h;
import com.byazt.omf.rh;
import com.xinzhu.overmind.utils.l;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 34})
public class a extends com.byazt.ha.sp implements qp.c {
    public static boolean ve = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public bm f12291a;
    public com.byazt.gat.n bm;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final d f12293da;
    public com.byazt.im.i gr;
    public com.byazt.im.a gt;
    public com.byazt.nc.tt gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.byazt.im.uj f12294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f12296i;
    public com.byazt.im.sp lr;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f12299m;
    public com.byazt.im.uj md;
    public long my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.dj.tt f12300n;
    public long nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public y f12302p;
    public com.byazt.im.x qy;
    public long rh;
    public com.byazt.im.a rl;
    public int sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f12303t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.tdq.c f12304u;
    public c yp;
    public y yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f12306z;
    public com.byazt.im.i zm;
    public int uj = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.nh.c f12305x = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f12292d = new AtomicBoolean(false);
    public final AtomicBoolean eo = new AtomicBoolean(false);

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public final AtomicBoolean f12307zb = new AtomicBoolean(false);
    public final AtomicBoolean or = new AtomicBoolean(false);
    public final AtomicBoolean cu = new AtomicBoolean(false);
    public final AtomicBoolean qp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final AtomicInteger f12301nb = new AtomicInteger(0);
    public final AtomicBoolean pf = new AtomicBoolean(false);
    public final AtomicBoolean bx = new AtomicBoolean(false);
    public final AtomicBoolean sv = new AtomicBoolean(false);
    public final AtomicBoolean aw = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public final AtomicInteger f12297ic = new AtomicInteger(0);

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public boolean f12295hd = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final tt f12298l = new tt();

    @com.byazt.zqa.c(c = {0, 1, l.f90098b, 464})
    class c {
        public final AtomicBoolean tt = new AtomicBoolean(false);

        public c() {
        }

        private void uj(final com.byazt.im.sp spVar) {
            if (spVar == null) {
                return;
            }
            com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.c.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f12305x != null) {
                        a.this.f12305x.c(spVar.i(), new com.byazt.lq.ve(spVar.uj(), spVar.n()));
                        com.byazt.dz.c.c("Splash_FullLink", "onSplashRenderFail回调 true " + spVar.uj());
                    }
                }
            });
            a.this.n();
        }

        public void tt(final com.byazt.im.sp spVar) {
            if (spVar == null) {
                return;
            }
            a.this.sl();
            if (this.tt.get()) {
                return;
            }
            this.tt.set(true);
            a.this.c(false);
            com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.c.3
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f12305x != null) {
                        if (a.this.f12301nb.get() > 0) {
                            a.this.f12305x.c(null, new com.byazt.lq.ve(1, "load splash material fail"));
                            return;
                        }
                        com.byazt.lq.ve veVar = new com.byazt.lq.ve(spVar.uj(), spVar.n());
                        a.this.c((String) null, false, veVar);
                        a.this.f12305x.c(veVar);
                    }
                }
            });
            a.this.n();
            com.byazt.dz.c.uj("Splash_FullLink", "onSplashLoadFail 素材加载加载失败 code: " + spVar.uj());
            sp.c(spVar.x(), a.this.tt(spVar.x()), a.this.f12300n, spVar);
        }

        public void ve(com.byazt.im.sp spVar) {
            a.this.sl();
            if (this.tt.get()) {
                return;
            }
            this.tt.set(true);
            sp.c(spVar.x(), a.this.tt(spVar.x()), a.this.f12300n, spVar);
            uj(spVar);
            m.uj("SplashLoadManager", "渲染失败 code " + spVar.uj() + " msg " + spVar.n());
        }

        public void c(final com.byazt.im.sp spVar) {
            if (spVar == null) {
                return;
            }
            a.this.sl();
            if (!this.tt.get() && a.this.f12301nb.get() <= 0) {
                this.tt.set(true);
                a.this.c(false);
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.f12305x != null) {
                            if (spVar.uj() == 22) {
                                spVar.tt(1);
                            }
                            com.byazt.lq.ve veVar = new com.byazt.lq.ve(spVar.uj(), spVar.n());
                            a.this.c((String) null, false, veVar);
                            a.this.f12305x.c(veVar);
                            com.byazt.dz.c.c("Splash_FullLink", "onSplashLoadFail 回调");
                        }
                    }
                });
                c(false, true, (Object) null);
                a.this.n();
                com.byazt.dz.c.c("Splash_FullLink", "onLoadSplashAdFail回调 广告获取失败");
                sp.c(spVar.x(), a.this.tt(spVar.x()), a.this.f12300n, spVar);
            }
        }

        public boolean ve() {
            return this.tt.get();
        }

        public void tt() {
            if (this.tt.get()) {
                return;
            }
            com.byazt.dz.c.c("Splash_FullLink", "触发 buffer_time超时 开始给加载成功回调以及开始渲染");
            a.this.da();
        }

        public void c(com.byazt.im.x xVar) {
            if (this.tt.get()) {
                return;
            }
            if (a.this.f12301nb.get() == 0) {
                a.this.c(true);
            }
            if (xVar != null) {
                y yVar = xVar.sl() ? a.this.f12302p : a.this.yv;
                if (yVar != null) {
                    yVar.a(xVar.c());
                    yVar.rh(xVar.yp());
                    yVar.rl(System.currentTimeMillis() - yVar.gr());
                }
                c(a.this.f12305x, yVar, xVar.tt(), xVar.t(), xVar.sl(), xVar.z());
            }
        }

        private void c(com.byazt.nh.c cVar, y yVar, ic icVar, com.byazt.nc.tt ttVar, boolean z10, boolean z11) {
            if (cVar == null || yVar == null || a.this.f12301nb.get() > 0) {
                return;
            }
            if (a.this.c(icVar)) {
                a aVar = a.this;
                sp.c(z10 ? aVar.f12302p : aVar.yv, 2);
                a.this.sl();
            }
            a.this.sv.set(z10);
            a.this.f12301nb.set(1);
            long jCurrentTimeMillis = System.currentTimeMillis();
            c(ttVar, 1);
            a.this.c(ttVar.getLifecycleId(), true, (com.byazt.lq.ve) null);
            cVar.c(ttVar);
            if (!TextUtils.isEmpty(a.this.sp) && icVar != null) {
                icVar.c(a.this.sp);
                com.byazt.iyp.tt.c(icVar, "splash_ad");
            }
            a.this.f12301nb.set(2);
            com.byazt.dz.c.c("Splash_FullLink", "onSplashLoadSuccess() 媒体处理完成");
            c(z10, false, (Object) ttVar);
            yVar.nu(System.currentTimeMillis() - jCurrentTimeMillis);
            if (z11) {
                sp.c(a.this.f12296i, yVar, icVar, z10, jCurrentTimeMillis);
            }
        }

        public void c(final com.byazt.im.i iVar) {
            a.this.sl();
            if (this.tt.get()) {
                return;
            }
            this.tt.set(true);
            boolean z10 = iVar != null && iVar.ve();
            a.this.c(iVar);
            a aVar = a.this;
            aVar.c(z10, z10 ? aVar.f12302p : aVar.yv);
            com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.c.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.im.i iVar2;
                    if (a.this.f12305x == null || (iVar2 = iVar) == null) {
                        return;
                    }
                    c.this.c(iVar2.c(), 2);
                    a.this.f12305x.tt(iVar.c());
                }
            });
        }

        public void c() {
            com.byazt.dz.c.c("Splash_FullLink", "onTimeOut start");
            a.this.f12292d.set(true);
            if (this.tt.get()) {
                return;
            }
            this.tt.set(true);
            if (a.this.f12301nb.get() == 0) {
                a.this.c(false);
            }
            if (a.this.bm != null) {
                a.this.bm.c();
            }
            com.byazt.dz.c.c("Splash_FullLink", "开屏超时");
            if (a.this.f12305x != null) {
                if (a.this.f12301nb.get() > 0) {
                    a.this.f12305x.c(null, new com.byazt.lq.ve(3, "load success but render fail"));
                } else {
                    com.byazt.lq.ve veVar = new com.byazt.lq.ve(23, "load splash time out");
                    a.this.c((String) null, false, veVar);
                    a.this.f12305x.c(veVar);
                }
                a.this.n();
            }
            boolean z10 = a.this.f12295hd;
            a aVar = a.this;
            sp.c(z10, aVar.tt(aVar.f12295hd), a.this.f12300n, new com.byazt.im.sp(23, "load splash time out", a.this.f12295hd));
            boolean z11 = a.this.f12295hd;
            a aVar2 = a.this;
            sp.c(z11, aVar2.tt(aVar2.f12295hd), a.this.f12300n);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(com.byazt.nc.tt ttVar, int i10) {
            if (ttVar instanceof com.byazt.uo.c) {
                ((com.byazt.uo.c) ttVar).syncCallbackStatus(i10);
            }
        }

        private void c(boolean z10, boolean z11, Object obj) {
            ic icVarTt = a.this.tt(true);
            if (a.this.f12304u == null || icVarTt == null) {
                return;
            }
            String strQy = icVarTt.qy();
            a.this.f12304u.c(a.this.f12300n.uj(), strQy, z10, z11, obj);
        }
    }

    private a(Context context) {
        if (context != null) {
            this.f12296i = context.getApplicationContext();
        } else {
            this.f12296i = gt.getContext();
        }
        this.f12293da = new d(Looper.getMainLooper(), this);
        this.yp = new c();
        com.byazt.omf.x.m().da(false);
        u();
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what == 2) {
            c cVar = this.yp;
            if (cVar != null) {
                cVar.c();
            }
            d dVar = this.f12293da;
            if (dVar != null) {
                dVar.removeMessages(2);
            }
        }
        if (message.what == 4) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void da() {
        if (this.yp == null) {
            return;
        }
        if (tt(tt(true), true)) {
            AtomicBoolean atomicBoolean = this.eo;
            if (atomicBoolean == null || !atomicBoolean.get()) {
                return;
            }
            sl();
            com.byazt.dz.c.c("Splash_FullLink", "buffer_time超时-并发 缓存素材加载成功，开始给加载成功回调");
            com.byazt.im.x xVar = this.qy;
            if (xVar != null) {
                xVar.c(this.gu);
            }
            n.tt(new Runnable() { // from class: com.byazt.cc.a.11
                @Override // java.lang.Runnable
                public void run() {
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            sp.uj(a.this.f12302p, jCurrentTimeMillis);
                            a.this.i();
                        }
                    });
                }
            });
            return;
        }
        AtomicBoolean atomicBoolean2 = this.eo;
        if (atomicBoolean2 == null || !atomicBoolean2.get()) {
            return;
        }
        com.byazt.dz.c.c("Splash_FullLink", "buffer_time超时-串行 缓存素材加载成功，开始给加载成功回调以及开始渲染");
        sl();
        com.byazt.gat.c cVarTt = tt(this.rl, this.qy, this.yp);
        com.byazt.im.x xVar2 = this.qy;
        if (xVar2 != null) {
            xVar2.c(cVarTt.c());
        }
        n.tt(new Runnable() { // from class: com.byazt.cc.a.12
            @Override // java.lang.Runnable
            public void run() {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        sp.uj(a.this.f12302p, jCurrentTimeMillis);
                        a.this.yp.c(a.this.qy);
                    }
                });
            }
        });
        c(this.rl, cVarTt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sl() {
        d dVar = this.f12293da;
        if (dVar != null) {
            dVar.removeMessages(4);
        }
        d dVar2 = this.f12293da;
        if (dVar2 != null) {
            dVar2.removeMessages(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (com.byazt.gat.n.c(this.f12300n, this.f12291a)) {
            return;
        }
        this.f12304u.c(new os(this.gt.uj(), this.gt.tt(), null), this.f12300n, true);
    }

    private void u() {
        this.yv = new y();
        y yVar = new y();
        this.f12302p = yVar;
        sp.c(this.yv, yVar);
        this.md = new com.byazt.im.uj();
        this.f12294h = new com.byazt.im.uj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean yp() {
        return this.uj == 2;
    }

    private boolean z() {
        return (com.byazt.by.n.c().sl() & 4) == 4;
    }

    private void a() {
        com.byazt.tdq.c cVar = this.f12304u;
        if (cVar != null) {
            cVar.tt(this.f12300n, this.f12291a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        com.byazt.dz.c.c("Splash_FullLink", "startCallBackWhenBufferTimeout ");
        this.yp.c(this.qy);
        this.bx.set(true);
        if (!this.or.get() || this.pf.get()) {
            return;
        }
        this.pf.set(true);
        com.byazt.dz.c.c("Splash_FullLink", "素材加载和渲染并发 buffer_time超时 缓存素材加载成功，渲染成功开始给 onRenderSplashSuccess回调");
        this.yp.c(this.zm);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sp() {
        int iOptInt;
        com.byazt.im.a aVar = this.rl;
        if (aVar != null && aVar.tt() != null && this.rl.tt().ym() != null && (iOptInt = this.rl.tt().ym().optInt("real_drop_cache_type", 0)) == 1) {
            com.byazt.dz.c.c("SplashLoadManager", "loadCacheWhenRealAdDrop - 缓存兜底返回配置 realDropCacheType： " + iOptInt);
            x();
            return;
        }
        if (this.f12298l.c()) {
            com.byazt.dz.c.c("SplashLoadManager", "loadCacheWhenRealAdDrop - 计分模式下允许兜底缓存： ");
            x();
        } else {
            c cVar = this.yp;
            if (cVar != null) {
                cVar.c(this.lr);
            }
        }
    }

    private void x() {
        d dVar = this.f12293da;
        if (dVar != null) {
            dVar.removeMessages(4);
        }
        c cVar = this.yp;
        if (cVar != null) {
            cVar.tt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        int i10;
        if (com.byazt.tdq.c.c(this.uj) && ((i10 = this.uj) == 1 || i10 == 3)) {
            return;
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10) {
        if (z10) {
            this.f12294h.ve(System.currentTimeMillis() - this.my);
        } else {
            this.md.ve(System.currentTimeMillis() - this.rh);
        }
    }

    private void uj() {
        this.f12292d.set(false);
        this.eo.set(false);
        this.f12307zb.set(false);
        this.or.set(false);
        this.pf.set(false);
        this.bx.set(false);
        this.cu.set(false);
        this.qp.set(false);
        this.sv.set(false);
        this.aw.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ve(boolean z10) {
        com.byazt.im.a aVar;
        return (z10 || this.f12304u == null || (aVar = this.gt) == null || aVar.uj() == null || this.gt.tt() == null || !com.byazt.eti.n.c(this.gt.tt())) ? false : true;
    }

    private void n(boolean z10) {
        if (z10) {
            this.my = System.currentTimeMillis();
        } else {
            this.rh = System.currentTimeMillis();
        }
    }

    private void tt(com.byazt.dj.tt ttVar) {
        this.tt = UUID.randomUUID().toString();
        com.byazt.lh.tt ttVar2 = (com.byazt.lh.tt) com.byazt.ip.n.c(0);
        this.f14869c = ttVar2;
        ttVar2.tt(this.tt, ttVar.or());
        this.f14869c.c(this.tt, new com.byazt.ky.ve());
        if (com.byazt.wi.a.c().c(3)) {
            this.f14869c.c(this.tt, new com.byazt.wi.ve());
        }
    }

    private int ve(ic icVar) {
        return Math.max(com.byazt.by.n.c().yp(), (this.f12303t - ((int) (System.currentTimeMillis() - this.f12306z))) - (icVar != null ? pu.n(icVar) : 100));
    }

    private void sp(boolean z10) {
        if (this.f12293da != null) {
            if (yp()) {
                if (z10) {
                    return;
                } else {
                    this.f12293da.removeMessages(4);
                }
            }
            this.f12293da.removeMessages(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ic tt(boolean z10) {
        if (z10) {
            com.byazt.im.a aVar = this.rl;
            if (aVar == null) {
                return null;
            }
            return aVar.tt();
        }
        com.byazt.im.a aVar2 = this.gt;
        if (aVar2 == null) {
            return null;
        }
        return aVar2.tt();
    }

    private bm ve(com.byazt.dj.tt ttVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        bm bmVar = new bm();
        bmVar.sp = 2;
        bmVar.f13587x = jCurrentTimeMillis;
        bmVar.yp = com.byazt.omf.x.m().kp();
        Object obj = this.f12305x;
        if (obj != null && (obj instanceof com.byazt.gk.tt)) {
            bmVar.f13582i = ((com.byazt.gk.tt) obj).tt();
        }
        return bmVar;
    }

    private void tt(com.byazt.im.x xVar, long j10) {
        if (xVar.sl()) {
            if (this.qp.get()) {
                return;
            }
            this.f12294h.tt(j10 - this.nu);
            this.f12302p.ve(xVar.a());
            this.f12302p.tt(xVar.n());
            return;
        }
        if (this.cu.get()) {
            return;
        }
        this.md.tt(j10 - this.f12299m);
        this.yv.ve(xVar.a());
        this.yv.tt(xVar.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uj(boolean z10) {
        return z10 && yp();
    }

    public static a c(Context context) {
        return new a(context);
    }

    public static boolean ve() {
        return (com.byazt.by.n.c().t() & 256) == 256;
    }

    public void c(final com.byazt.dj.tt ttVar, final com.byazt.nh.c cVar, final int i10) {
        if (ttVar != null && !TextUtils.isEmpty(ttVar.rl())) {
            this.f14869c = (com.byazt.lh.tt) com.byazt.ip.n.c(0);
        } else {
            tt(ttVar);
        }
        String string = UUID.randomUUID().toString();
        this.sp = string;
        com.byazt.iyp.tt.c(ttVar, true, string);
        this.f14869c.c(this.tt, new com.byazt.ip.uj.c() { // from class: com.byazt.cc.a.1
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar2) {
                com.byazt.dj.tt ttVar3;
                if (!(ttVar2 instanceof com.byazt.ha.tt) || (ttVar3 = ttVar) == null) {
                    return;
                }
                com.byazt.ha.tt ttVar4 = (com.byazt.ha.tt) ttVar2;
                ttVar4.f14873c = ttVar3;
                ttVar4.f15453x = ttVar3.uj();
                ttVar4.sp = 3;
            }
        });
        c();
        if (!com.byazt.ogz.i.c()) {
            com.byazt.lq.ve veVar = new com.byazt.lq.ve(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            c((String) null, false, veVar);
            cVar.c(veVar);
            return;
        }
        int iX = gt.tt().x(nb.tt(ttVar));
        com.byazt.bwm.sp spVar = new com.byazt.bwm.sp("loadSplashAd b") { // from class: com.byazt.cc.a.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.byazt.omf.x.m().sp(1);
                    a.this.f12305x = cVar;
                    a.this.c(ttVar, i10);
                } catch (Throwable th) {
                    com.byazt.lq.ve veVar2 = new com.byazt.lq.ve(4000, " msg = " + th.getMessage());
                    a.this.c((String) null, false, veVar2);
                    cVar.c(veVar2);
                    m.ve("SplashLoadManager", "splash component maybe not exist, pls check1", th);
                }
            }
        };
        if (!rh.f18098c) {
            m.uj("SplashLoadManager", h.NOT_INIT_TIPS_MSG);
            com.byazt.lq.ve veVar2 = new com.byazt.lq.ve(10000, h.NOT_INIT_TIPS_MSG);
            c((String) null, false, veVar2);
            cVar.c(veVar2);
            return;
        }
        if (AdSdkInitializerHolder.isSdkInitSuccess() && (iX == 4 || c(ttVar))) {
            spVar.run();
        } else if (h.canMultiThreadLoad()) {
            com.byazt.bwm.n.uj(spVar);
        } else {
            com.byazt.bwm.i.tt.t().execute(spVar);
        }
        com.byazt.ktv.c.c().c(3, ttVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.im.a aVar, c cVar) {
        if (aVar == null || cVar == null) {
            return;
        }
        ic icVarTt = aVar.tt();
        boolean zN = aVar.n();
        com.byazt.gat.c cVarC = c(aVar, new com.byazt.im.x(icVarTt, zN), cVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.byazt.im.tt ttVar = new com.byazt.im.tt(icVarTt, zN);
        ttVar.c(zN);
        ttVar.c(aVar.uj());
        ttVar.c(aVar.c());
        ttVar.c(aVar.ve());
        com.byazt.gat.a aVarC = c(aVar, cVar, cVarC.c(), ttVar, jElapsedRealtime);
        cVarC.c(aVarC);
        sp.ve(zN ? this.f12302p : this.yv, System.currentTimeMillis());
        aVarC.tt();
        c(zN, 1);
        c(aVar, cVarC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean tt(ic icVar, boolean z10) {
        if (icVar == null) {
            return false;
        }
        if (yp() && z10 && z()) {
            return false;
        }
        if ((com.byazt.by.n.c().u() & 1) == 1) {
            return true;
        }
        return x.tt(icVar) && tt(icVar) && icVar.gk() == 1;
    }

    private boolean tt(ic icVar) {
        return icVar != null && pu.c(icVar) == 2;
    }

    private com.byazt.gat.c tt(final com.byazt.im.a aVar, com.byazt.im.x xVar, final c cVar) {
        if (aVar == null || xVar == null || cVar == null) {
            return null;
        }
        return new com.byazt.gat.c(new com.byazt.im.ve(this.f12296i, "splash_ad", aVar, xVar, this.f12300n, true), new com.byazt.gat.uj<com.byazt.im.i, com.byazt.im.sp>() { // from class: com.byazt.cc.a.6
            @Override // com.byazt.gat.uj
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void tt(com.byazt.im.i iVar) {
                a.this.a(aVar.n());
                if (a.this.sv.get()) {
                    if (aVar.n()) {
                        cVar.c(iVar);
                    }
                } else {
                    if (aVar.n()) {
                        return;
                    }
                    cVar.c(iVar);
                }
            }

            @Override // com.byazt.gat.uj
            public void c(com.byazt.im.sp spVar) {
                cVar.ve(spVar);
            }

            @Override // com.byazt.gat.uj
            public void c() {
                a.this.tt(aVar);
            }
        }, this.f12304u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.dj.tt ttVar, int i10) {
        if (ttVar == null) {
            return;
        }
        com.byazt.dz.c.c("Splash_FullLink", "加载开屏广告--begin ");
        this.f12306z = System.currentTimeMillis();
        bm bmVarVe = ve(ttVar);
        this.f12291a = bmVarVe;
        bmVarVe.my = this.sp;
        this.f12300n = ttVar;
        this.sl = nb.tt(ttVar);
        this.f12304u = com.byazt.tdq.c.c();
        int iC = this.f12298l.c(this.f12300n, this.sl);
        this.uj = iC;
        com.byazt.dz.c.c("Splash_FullLink", "当前rit位 " + this.sl);
        int iA = gt.tt().a(ttVar.uj());
        c(ttVar.uj(), iA, i10);
        bm bmVar = this.f12291a;
        long j10 = i10;
        bmVar.f13581da = j10;
        bmVar.sl = iA;
        bmVar.f13585t = this.f12303t;
        sp.c(ttVar, j10);
        uj();
        tt();
        c(ttVar, this.f12291a, iC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.im.a aVar) {
        if (aVar != null && aVar.n()) {
            return;
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.dj.tt ttVar, bm bmVar, int i10) {
        sp.c(this.yv, this.f12302p, bmVar, this.uj, i10);
        c(ttVar, bmVar, this.yp);
    }

    private void c(final com.byazt.dj.tt ttVar, bm bmVar, final c cVar) {
        if (cVar == null) {
            return;
        }
        com.byazt.tdq.n nVar = new com.byazt.tdq.n();
        nVar.f20126c = this.f12298l.tt;
        com.byazt.gat.n nVar2 = new com.byazt.gat.n(new com.byazt.im.n(ttVar, bmVar, nVar), new com.byazt.gat.tt<com.byazt.im.a, com.byazt.im.sp>() { // from class: com.byazt.cc.a.10
            @Override // com.byazt.gat.tt
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void tt(com.byazt.im.a aVar) {
                com.byazt.dj.tt ttVar2;
                if (TextUtils.isEmpty(a.this.tt) && (ttVar2 = ttVar) != null && !TextUtils.isEmpty(ttVar2.rl()) && aVar != null && aVar.tt() != null && a.this.f14869c != null) {
                    a aVar2 = a.this;
                    aVar2.tt = aVar2.f14869c.tt(aVar.tt().qy());
                }
                if (aVar == null || aVar.tt() == null) {
                    cVar.c(new com.byazt.im.sp(1, "no ad model", false));
                    return;
                }
                ic icVarTt = aVar.tt();
                if (aVar.n()) {
                    a.this.f12297ic.set(1);
                    a.this.rl = aVar;
                    if (!a.this.yp()) {
                        a.this.f12295hd = true;
                    }
                } else {
                    a.this.gt = aVar;
                    a.this.f12295hd = false;
                }
                if (a.this.f12292d.get() || a.this.yp.ve() || a.this.f12301nb.get() > 0) {
                    a.this.c(aVar, aVar.n(), true);
                    return;
                }
                a.this.c(aVar);
                if (a.this.tt(icVarTt, aVar.n())) {
                    com.byazt.dz.c.c("Splash_FullLink", "开始并发加载素材 ");
                    a.this.tt(aVar, cVar);
                } else {
                    com.byazt.dz.c.c("Splash_FullLink", "开始串行加载素材 getReqId " + aVar.tt().qy());
                    a.this.c(aVar, cVar);
                }
            }

            @Override // com.byazt.gat.tt
            public void c(com.byazt.im.sp spVar) {
                if (a.this.uj == 1 && a.this.f12298l.ve == 2) {
                    a.this.uj = 2;
                    a aVar = a.this;
                    aVar.c(ttVar, aVar.f12291a, a.this.uj);
                    return;
                }
                boolean zX = spVar.x();
                if (zX) {
                    a.this.f12297ic.set(-1);
                }
                if (a.this.uj(zX)) {
                    if (a.this.aw.get()) {
                        cVar.c(a.this.lr);
                        return;
                    }
                    return;
                }
                a.this.lr = spVar;
                if (a.this.yp()) {
                    if (a.this.f12297ic.get() != -1) {
                        if (a.this.f12297ic.get() == 1) {
                            a.this.sp();
                        }
                    } else {
                        cVar.c(spVar);
                    }
                    a.this.aw.set(true);
                    return;
                }
                cVar.c(spVar);
            }
        }, this.f12304u, this.f12298l);
        this.bm = nVar2;
        nVar2.c(this.uj);
    }

    private boolean c(ic icVar, boolean z10) {
        return (icVar == null || z10 || icVar.ej() != 3) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(ic icVar) {
        return (icVar != null ? icVar.ej() : 0) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final boolean z10, final y yVar) {
        com.byazt.bzd.x.c(new com.byazt.bwm.sp("preloadSplash") { // from class: com.byazt.cc.a.13
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.ve(z10)) {
                    a.this.t();
                } else {
                    a.this.n();
                }
                y yVar2 = yVar;
                boolean z11 = yVar2 != null && yVar2.cu();
                y yVar3 = yVar;
                boolean z12 = yVar3 != null && yVar3.zb();
                boolean z13 = z10;
                sp.c(z13, a.this.tt(z13), a.this.f12300n, z11, z12);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.im.a aVar) {
        boolean zN = aVar.n();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - this.f12306z;
        if (zN) {
            sp.c(this.f12302p);
            this.f12294h.c(pu.c(tt(zN)));
            this.f12294h.tt(pu.tt(tt(zN)));
            this.f12294h.c(j10);
            this.nu = jCurrentTimeMillis;
            com.byazt.dz.c.c("Splash_FullLink", "缓存加载物料--end 耗时S1： " + j10);
            return;
        }
        sp.c(this.yv);
        this.md.c(pu.c(tt(zN)));
        this.md.tt(pu.tt(tt(zN)));
        this.md.c(j10);
        this.f12299m = jCurrentTimeMillis;
        sp.c(this.yv, aVar);
        com.byazt.hy.n.c().ve().c(this.yv);
        com.byazt.dz.c.c("Splash_FullLink", "实时加载物料--end 耗时S1： " + j10);
    }

    private void c(final com.byazt.im.x xVar, com.byazt.im.a aVar, final c cVar) {
        if (xVar != null && this.f12301nb.get() <= 0) {
            final boolean zSl = xVar.sl();
            com.byazt.gat.c cVarTt = tt(aVar, xVar, cVar);
            xVar.c(cVarTt.c());
            if (!uj(xVar.sl())) {
                com.byazt.dz.c.c("Splash_FullLink", "不需要等待实时广告 isCacheAd " + zSl);
                if (ve()) {
                    n.tt(new Runnable() { // from class: com.byazt.cc.a.14
                        @Override // java.lang.Runnable
                        public void run() {
                            c cVar2 = cVar;
                            if (cVar2 != null) {
                                cVar2.c(xVar);
                            }
                        }
                    });
                    c(aVar, cVarTt);
                    return;
                } else {
                    n.tt(new Runnable() { // from class: com.byazt.cc.a.15
                        @Override // java.lang.Runnable
                        public void run() {
                            final long jCurrentTimeMillis = System.currentTimeMillis();
                            com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.15.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                                    boolean z10 = zSl;
                                    a aVar2 = a.this;
                                    sp.uj(z10 ? aVar2.f12302p : aVar2.yv, jCurrentTimeMillis);
                                    AnonymousClass15 anonymousClass16 = AnonymousClass15.this;
                                    cVar.c(xVar);
                                }
                            });
                        }
                    });
                    c(aVar, cVarTt);
                    return;
                }
            }
            com.byazt.dz.c.c("Splash_FullLink", "缓存素材加载成功，等待实时广告 isCacheAd " + zSl);
            this.qy = xVar;
            this.gu = cVarTt.c();
            this.eo.set(true);
            if (this.aw.get()) {
                sp();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.im.a aVar, final c cVar) {
        if (aVar == null || cVar == null) {
            return;
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        sp.ve(aVar.n() ? this.f12302p : this.yv, System.currentTimeMillis());
        com.byazt.im.tt ttVar = new com.byazt.im.tt(aVar.tt(), aVar.n());
        ttVar.c(aVar.uj());
        ttVar.c(aVar.n());
        ttVar.c(aVar.c());
        ttVar.c(aVar.ve());
        new com.byazt.gat.a(ttVar, new com.byazt.gat.ve<com.byazt.im.x, com.byazt.im.sp>() { // from class: com.byazt.cc.a.16

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public com.byazt.im.x f12319n;

            @Override // com.byazt.gat.ve
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void ve(com.byazt.im.x xVar) {
                this.f12319n = xVar;
                a.this.c(xVar, aVar, cVar, (com.byazt.nc.tt) null, true);
            }

            @Override // com.byazt.gat.ve
            public void tt(com.byazt.im.x xVar) {
                com.byazt.im.x xVar2 = this.f12319n;
                if (xVar2 != null) {
                    xVar2.n(true);
                }
                a.this.c(xVar, aVar, cVar, (com.byazt.nc.tt) null, jElapsedRealtime, true);
            }

            @Override // com.byazt.gat.ve
            public void c(com.byazt.im.sp spVar) {
                a.this.c(aVar, spVar, cVar, jElapsedRealtime);
            }
        }).tt();
        c(aVar.n(), 0);
    }

    private void c(final com.byazt.gat.c cVar, final boolean z10, final int i10) {
        n(z10);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.2
            @Override // java.lang.Runnable
            public void run() {
                sp.uj(z10 ? a.this.f12302p : a.this.yv, jCurrentTimeMillis);
                if (cVar == null) {
                    return;
                }
                System.currentTimeMillis();
                cVar.c(i10);
                cVar.tt();
            }
        });
    }

    private void c(com.byazt.im.x xVar, long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zSl = xVar.sl();
        if (zSl) {
            sp.c(this.f12302p, xVar);
            sp.c(this.f12302p, xVar, j10, tt(zSl));
            sp.c(tt(zSl), this.f12302p, xVar);
            c(zSl, xVar, jCurrentTimeMillis - this.nu);
            com.byazt.im.x xVar2 = this.qy;
            if (xVar2 != null) {
                xVar2.n(true);
            }
        } else {
            sp.c(this.yv, xVar);
            sp.c(this.yv, xVar, j10, tt(zSl));
            sp.c(tt(zSl), this.yv, xVar);
            c(zSl, xVar, jCurrentTimeMillis - this.f12299m);
        }
        tt(xVar, jCurrentTimeMillis);
        if (this.f12301nb.get() <= 0 || this.f12292d.get()) {
            return;
        }
        if (this.sv.get()) {
            if (zSl) {
                sp.c(this.f12296i, this.f12302p, xVar.tt(), true, jCurrentTimeMillis);
            }
        } else {
            if (zSl) {
                return;
            }
            sp.c(this.f12296i, this.yv, xVar.tt(), false, jCurrentTimeMillis);
        }
    }

    private void c(boolean z10, com.byazt.im.x xVar, long j10) {
        String str = z10 ? "缓存广告" : "实时广告";
        if (xVar.n()) {
            if (xVar.da()) {
                com.byazt.dz.c.c("Splash_FullLink", str + "： 加载缓存视频素材--end, 耗时S2： " + j10);
                return;
            }
            com.byazt.dz.c.c("Splash_FullLink", str + "： 加载网络视频素材--end, 耗时S2： " + j10);
            return;
        }
        if (xVar.a()) {
            com.byazt.dz.c.c("Splash_FullLink", str + "： 加载缓存图片素材--end, 耗时S2： " + j10);
            return;
        }
        com.byazt.dz.c.c("Splash_FullLink", str + "： 加载网络图片素材--end, 耗时S2：" + j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.im.x xVar, com.byazt.im.a aVar, final c cVar, com.byazt.nc.tt ttVar) {
        if (xVar != null && this.f12301nb.get() <= 0) {
            final boolean zSl = xVar.sl();
            if (!uj(zSl)) {
                com.byazt.dz.c.c("Splash_FullLink", "实时素材加载成功，不需要等待实时广告, 此时渲染结果: " + this.f12307zb.get());
                xVar.c(ttVar);
                if (ve()) {
                    cVar.c(xVar);
                    if (this.f12307zb.get()) {
                        cVar.c(this.gr);
                        return;
                    }
                    return;
                }
                final long jCurrentTimeMillis = System.currentTimeMillis();
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.cc.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        sp.uj(zSl ? a.this.f12302p : a.this.yv, jCurrentTimeMillis);
                        cVar.c(xVar);
                        if (a.this.f12307zb.get()) {
                            cVar.c(a.this.gr);
                        }
                    }
                });
                return;
            }
            com.byazt.dz.c.c("Splash_FullLink", "缓存广告: 素材加载成功，需要等待实时广告");
            this.qy = xVar;
            this.gu = ttVar;
            this.eo.set(true);
            if (this.aw.get()) {
                sp();
            }
        }
    }

    private com.byazt.gat.a c(final com.byazt.im.a aVar, final c cVar, final com.byazt.nc.tt ttVar, com.byazt.im.tt ttVar2, final long j10) {
        return new com.byazt.gat.a(ttVar2, new com.byazt.gat.ve<com.byazt.im.x, com.byazt.im.sp>() { // from class: com.byazt.cc.a.4

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public com.byazt.im.x f12324a;

            @Override // com.byazt.gat.ve
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void ve(com.byazt.im.x xVar) {
                this.f12324a = xVar;
                a.this.c(xVar, aVar, cVar, ttVar, false);
            }

            @Override // com.byazt.gat.ve
            public void tt(com.byazt.im.x xVar) {
                com.byazt.im.x xVar2 = this.f12324a;
                if (xVar2 != null) {
                    xVar2.n(true);
                }
                a.this.c(xVar, aVar, cVar, ttVar, j10, false);
            }

            @Override // com.byazt.gat.ve
            public void c(com.byazt.im.sp spVar) {
                a.this.c(aVar, spVar, cVar, j10);
            }
        });
    }

    private com.byazt.gat.c c(final com.byazt.im.a aVar, com.byazt.im.x xVar, final c cVar) {
        return new com.byazt.gat.c(new com.byazt.im.ve(this.f12296i, "splash_ad", aVar, xVar, this.f12300n, false), new com.byazt.gat.uj<com.byazt.im.i, com.byazt.im.sp>() { // from class: com.byazt.cc.a.5
            @Override // com.byazt.gat.uj
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void tt(com.byazt.im.i iVar) {
                a.this.a(aVar.n());
                if (a.this.uj(iVar.ve())) {
                    com.byazt.dz.c.c("Splash_FullLink", "缓存渲染成功 需要等待实时广告: ");
                    if (a.this.bx.get() && !a.this.pf.get()) {
                        com.byazt.dz.c.c("Splash_FullLink", "已经超时走缓存广告");
                        a.this.pf.set(true);
                        cVar.c(iVar);
                    }
                    a.this.or.set(true);
                    a.this.zm = iVar;
                    return;
                }
                com.byazt.dz.c.c("Splash_FullLink", "createCSJSplashRenderParallel- 实时广告onSuccess");
                a.this.f12307zb.set(true);
                a.this.gr = iVar;
                if (a.this.f12301nb.get() == 2) {
                    if (!a.this.yp()) {
                        cVar.c(iVar);
                    } else {
                        if (a.this.sv.get()) {
                            return;
                        }
                        cVar.c(iVar);
                    }
                }
            }

            @Override // com.byazt.gat.uj
            public void c(com.byazt.im.sp spVar) {
                if (!a.this.uj(spVar.x())) {
                    a.this.f12307zb.set(false);
                    cVar.ve(spVar);
                } else {
                    a.this.or.set(false);
                }
            }

            @Override // com.byazt.gat.uj
            public void c() {
                a.this.tt(aVar);
            }
        }, this.f12304u);
    }

    private void c(com.byazt.im.a aVar, com.byazt.gat.c cVar) {
        if (cVar == null || this.f12292d.get()) {
            return;
        }
        int iVe = ve(tt(aVar.n()));
        com.byazt.dz.c.c("Splash_FullLink", "开始渲染 isCache " + aVar.n() + ", 渲染超时设置：" + iVe);
        c(cVar, aVar.n(), iVe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.im.i iVar) {
        if (iVar == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zVe = iVar.ve();
        if (zVe) {
            sp.c(tt(zVe), this.f12294h, iVar);
            this.f12294h.uj(jCurrentTimeMillis - this.f12306z);
            this.f12294h.uj(this.uj);
            this.f12294h.c(zVe);
            sp.c(tt(zVe), this.f12294h);
            sp.tt(tt(zVe), this.f12294h);
        } else {
            sp.c(tt(zVe), this.md, iVar);
            this.md.uj(jCurrentTimeMillis - this.f12306z);
            this.md.uj(this.uj);
            this.md.c(zVe);
            sp.c(tt(zVe), this.md);
            sp.tt(tt(zVe), this.md);
            com.byazt.dz.c.c("Splash_FullLink", "开屏广告渲染--end, 耗时S3： " + (jCurrentTimeMillis - this.rh));
        }
        StringBuilder sb2 = new StringBuilder("渲染成功回调 开屏广告类型： ");
        sb2.append(zVe ? "缓存" : "实时");
        com.byazt.dz.c.c("Splash_FullLink", sb2.toString());
        com.byazt.dz.c.c("Splash_FullLink", "加载开屏广告--end，总耗时： " + (jCurrentTimeMillis - this.f12306z));
        com.byazt.dz.c.c("Splash_FullLink", "加载开屏广告--end，getReqId： " + tt(zVe).qy());
    }

    private void c(String str, int i10, int i11) {
        int iYp = gt.tt().yp(str);
        if (iYp == 1) {
            this.f12303t = i10 > 0 ? Math.min(i10, i11) : Math.max(i11, 500);
        } else if (iYp != 2) {
            this.f12303t = i10 > 0 ? Math.max(i10, i11) : Math.max(i11, 500);
        } else {
            this.f12303t = i10 > 0 ? i10 : Math.max(i11, 500);
        }
        int iCurrentTimeMillis = (int) (((long) this.f12303t) - (System.currentTimeMillis() - this.f12291a.f13582i));
        if (iCurrentTimeMillis <= 0) {
            iCurrentTimeMillis = this.f12303t;
        }
        this.f12303t = iCurrentTimeMillis;
        com.byazt.dz.c.c("Splash_FullLink", "splashTimeOutControlType = " + iYp + "; devTimeOut = " + i11 + "; cloudTimeOut = " + i10 + "; realTimeOut = " + this.f12303t);
        this.f12293da.sendEmptyMessageDelayed(2, (long) this.f12303t);
        c(this.f12303t);
    }

    private void c(int i10) {
        int i11 = gt.tt().i(this.sl);
        if (i11 >= i10 || i11 <= 0 || !yp() || this.f12293da == null) {
            return;
        }
        int i12 = i10 - i11;
        com.byazt.dz.c.c("Splash_FullLink", "buffer time: " + i11 + "  减去buffer time后超时时间：" + i12);
        this.f12293da.sendEmptyMessageDelayed(4, (long) i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.im.x xVar, final com.byazt.im.a aVar, final c cVar, final com.byazt.nc.tt ttVar, boolean z10) {
        if (this.f12292d.get()) {
            return;
        }
        tt(xVar, System.currentTimeMillis());
        if (xVar.sl()) {
            com.byazt.dz.c.c("Splash_FullLink", "缓存广告： 素材首包回调");
            this.qp.set(true);
        } else {
            com.byazt.dz.c.c("Splash_FullLink", "实时广告： 素材首包回调");
            this.cu.set(true);
        }
        sp.c(xVar.sl() ? this.f12302p : this.yv, 3);
        sp(xVar.sl());
        if (z10) {
            c(xVar, aVar, cVar);
        } else {
            n.tt(new Runnable() { // from class: com.byazt.cc.a.7
                @Override // java.lang.Runnable
                public void run() {
                    a.this.c(xVar, aVar, cVar, ttVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.im.x xVar, final com.byazt.im.a aVar, final c cVar, final com.byazt.nc.tt ttVar, long j10, boolean z10) {
        if (xVar == null) {
            return;
        }
        c(aVar, aVar.n(), false);
        if (this.f12292d.get()) {
            return;
        }
        if (ttVar instanceof com.byazt.uo.c) {
            ((com.byazt.uo.c) ttVar).updateSplashResourceModel(xVar, false);
        }
        c(xVar, j10);
        if (xVar.sl() && this.qp.get()) {
            return;
        }
        if (xVar.sl() || !this.cu.get()) {
            if (c(xVar.tt(), xVar.n()) || c(aVar.tt())) {
                sp.c(xVar.sl() ? this.f12302p : this.yv, 2);
                sp(xVar.sl());
            }
            if (z10) {
                c(xVar, aVar, cVar);
            } else {
                n.tt(new Runnable() { // from class: com.byazt.cc.a.8
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.c(xVar, aVar, cVar, ttVar);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.im.a aVar, com.byazt.im.sp spVar, c cVar, long j10) {
        if (spVar == null) {
            return;
        }
        boolean zX = spVar.x();
        if (!uj(zX)) {
            com.byazt.dz.c.c("Splash_FullLink", "实时cac广告: 素材加载失败，直接给回调");
            cVar.tt(spVar);
        } else {
            com.byazt.dz.c.c("Splash_FullLink", "缓存广告: 素材加载失败");
            this.eo.set(false);
            if (this.aw.get()) {
                cVar.tt(spVar);
            }
        }
        c(aVar, zX, false);
        int i10 = spVar.a() ? -14 : -7;
        if (!spVar.a()) {
            x.c(j10, false, false, tt(spVar.x()), i10, spVar.n());
        }
        com.byazt.dz.c.c("Splash_FullLink", (zX ? "缓存广告" : "实时广告") + "加载素材失败 " + spVar.uj());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.im.a aVar, boolean z10, boolean z11) {
        if (z10) {
            return;
        }
        try {
            if (this.f12301nb.get() > 0 && !this.sv.get()) {
                com.byazt.dz.c.c("lqmt", "该实时广告已回调媒体");
            } else {
                if (com.byazt.gat.n.c(this.f12300n, this.f12291a)) {
                    return;
                }
                if (this.f12301nb.get() > 0 || this.yp.ve()) {
                    this.f12304u.c(aVar, this.f12300n, z11, this.uj);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void c(boolean z10, int i10) {
        (z10 ? this.f12294h : this.md).n(i10);
    }

    public static boolean c(com.byazt.dj.tt ttVar) {
        return com.byazt.gat.n.c(ttVar, new bm()) && (com.byazt.by.n.c().t() & 4) == 4;
    }
}
