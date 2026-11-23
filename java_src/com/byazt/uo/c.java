package com.byazt.uo;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.aas.cu;
import com.byazt.aas.h;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.cc.SplashClickBarBtn;
import com.byazt.cc.TsView;
import com.byazt.ddx.n;
import com.byazt.dna.qp;
import com.byazt.ete.da;
import com.byazt.ete.ic;
import com.byazt.ete.iu;
import com.byazt.ete.oz;
import com.byazt.ete.pu;
import com.byazt.ete.s;
import com.byazt.ete.zb;
import com.byazt.im.a;
import com.byazt.im.i;
import com.byazt.im.sp;
import com.byazt.im.x;
import com.byazt.lh.ve;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.nr.z;
import com.byazt.omf.EmptyView;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.rl;
import com.byazt.un.uj;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 139, 20})
public class c extends com.byazt.nc.tt implements qp.c, TsView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View.OnTouchListener f20881a;
    public String aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.byazt.vw.tt f20882b;
    public ve bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TsView f20883c;
    public uj eo;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f20886h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public float f20887hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public float f20889ic;
    public n iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public com.byazt.im.ve f20890j;
    public boolean kk;
    public boolean lt;
    public com.byazt.uph.tt md;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile com.byazt.hkv.c f20893n;
    public a nu;
    public com.byazt.dj.tt os;
    public com.byazt.gat.uj<i, sp> oz;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Activity f20896q;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public com.byazt.tdq.c f20897r;
    public x rh;
    public boolean rl;
    public tt sp;
    public Context sv;
    public ic tt;
    public SoftReference<com.byazt.ocd.ve> uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public com.byazt.cc.i f20901v;
    public volatile com.byazt.pop.ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.vw.c f20902x;
    public sp zm;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AtomicBoolean f20888i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Map<String, Object> f20885da = new HashMap();
    public Double bm = null;
    public boolean lr = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f20891l = false;
    public boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f20899t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f20900u = -1;
    public final d lo = new d(Looper.getMainLooper(), this);
    public boolean yp = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f20904z = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f20892m = 0;
    public Map<String, Object> my = new HashMap();
    public AtomicBoolean gt = new AtomicBoolean(false);
    public boolean gu = true;
    public boolean gr = false;
    public com.byazt.cc.c pu = new com.byazt.cc.c();
    public boolean to = false;
    public long tk = 0;
    public long kp = 5;
    public AtomicBoolean yv = new AtomicBoolean(false);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AtomicBoolean f20895p = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AtomicBoolean f20884d = new AtomicBoolean(false);
    public boolean tx = true;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public AtomicBoolean f20905zb = new AtomicBoolean(false);
    public int or = -1;
    public int cu = -1;
    public final AtomicBoolean qp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AtomicBoolean f20898s = new AtomicBoolean(false);

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final AtomicInteger f20894nb = new AtomicInteger(0);
    public com.byazt.but.tt pf = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f20903y = false;
    public int dz = 0;

    /* JADX INFO: renamed from: com.byazt.uo.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 139, 44})
    private static class C0452c implements com.byazt.aas.c.tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ic f20922c;

        public C0452c(ic icVar) {
            this.f20922c = icVar;
        }

        @Override // com.byazt.aas.c.tt
        public void onAppBackground() {
            com.byazt.ddx.uj.tt(this.f20922c, "splash_ad", "splash_enter_background", System.currentTimeMillis());
        }

        @Override // com.byazt.aas.c.tt
        public void onAppExit() {
        }

        @Override // com.byazt.aas.c.tt
        public void onAppForeground() {
            com.byazt.ddx.uj.tt(this.f20922c, "splash_ad", "splash_enter_foreground", System.currentTimeMillis());
        }

        @Override // com.byazt.aas.c.tt
        public void onAppStart() {
        }
    }

    public interface tt {
        void onShow();
    }

    private void m() {
        boolean z10 = false;
        this.kk = false;
        com.byazt.cc.i iVar = new com.byazt.cc.i();
        this.f20901v = iVar;
        iVar.c(this.sv, this.tt);
        if (!this.pu.ve() && z()) {
            z10 = true;
        }
        if (z10) {
            SoftReference<com.byazt.ocd.ve> softReference = this.uj;
            if (softReference == null) {
                this.f20901v.c(this.aw, this.f20900u, this.pu, null);
            } else {
                this.f20901v.c(this.aw, this.f20900u, this.pu, softReference.get());
            }
            this.qy = true;
            this.f20901v.c(2);
            com.byazt.cc.c cVar = this.pu;
            if (cVar != null) {
                cVar.c(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        if (!this.lt) {
            this.gu = false;
            return;
        }
        if (this.to) {
            return;
        }
        this.to = true;
        com.byazt.cc.c cVar = this.pu;
        if (cVar != null) {
            cVar.c();
            this.pu = null;
        }
        uj ujVar = this.eo;
        if (ujVar != null) {
            ujVar.da();
        }
        this.f20902x = null;
        this.ve = null;
        this.f20896q = null;
    }

    public void a() {
    }

    public void bindDownloadAdapterToClickListener(com.byazt.pop.ve veVar) {
        if (this.f20893n != null) {
            ((com.byazt.nat.c) this.f20893n.c(com.byazt.nat.c.class)).c(this.ve);
        }
    }

    @Override // com.byazt.nc.tt
    public int getInteractionType() {
        ic icVar = this.tt;
        if (icVar == null) {
            return -1;
        }
        return icVar.i();
    }

    @Override // com.byazt.nc.tt
    public String getLifecycleId() {
        ic icVar = this.tt;
        if (icVar == null) {
            return null;
        }
        return icVar.zm();
    }

    @Override // com.byazt.nc.tt
    public Map<String, Object> getMediaExtraInfo() {
        ic icVar = this.tt;
        if (icVar == null) {
            return null;
        }
        zb zbVar = icVar.pa().get(0);
        if (zbVar == null) {
            return this.tt.yt();
        }
        if (!zbVar.a()) {
            return this.tt.yt();
        }
        String strC = zbVar.c();
        Map<String, Object> mapYt = this.tt.yt();
        mapYt.put("image_url", strC);
        return mapYt;
    }

    @Override // com.byazt.nc.tt
    public com.byazt.sbm.sp getMediationManager() {
        return new com.byazt.ah.n();
    }

    @Override // com.byazt.nc.tt
    public View getSplashCardView() {
        if (!this.qy || this.f20901v == null) {
            return null;
        }
        ic icVar = this.tt;
        if (icVar != null) {
            com.byazt.iyp.tt.c(icVar.c());
        }
        return this.f20901v.c();
    }

    @Override // com.byazt.nc.tt
    public View getSplashView() {
        return null;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            long j10 = this.tk + 1;
            this.tk = j10;
            if (j10 >= this.kp) {
                this.lo.sendEmptyMessage(2);
                return;
            } else {
                this.lo.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
        }
        if (i10 != 2) {
            return;
        }
        if (!this.kk && oz.c(this.tt)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("splash_card_close_type", 0);
                com.byazt.ddx.uj.tt(this.tt, "splash_ad", "splash_card_close", jSONObject);
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
        nu();
    }

    @Override // com.byazt.nc.tt
    public void hideSkipButton() {
        if (!this.f20888i.getAndSet(true)) {
            com.byazt.cc.sp.c(2, this.tt, this.aw, 0);
        }
        TsView tsView = this.f20883c;
        if (tsView != null) {
            tsView.setSkipIconVisibility(8);
        }
    }

    public void initLifecycle(final ic icVar, com.byazt.dj.tt ttVar) {
        if (icVar == null || ttVar == null) {
            return;
        }
        ve veVar = (ve) com.byazt.ip.n.c(1);
        this.bx = veVar;
        veVar.tt(getLifecycleId(), ttVar.or());
        this.bx.c(getLifecycleId(), new com.byazt.ky.uj());
        if (com.byazt.wi.a.c().c(nb.sl(icVar))) {
            this.bx.c(getLifecycleId(), new com.byazt.wi.uj());
        }
        this.bx.c(getLifecycleId(), new com.byazt.ip.uj.c() { // from class: com.byazt.uo.c.1
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar2) {
                if (ttVar2 instanceof com.byazt.ha.ve) {
                    com.byazt.ha.ve veVar2 = (com.byazt.ha.ve) ttVar2;
                    ic icVar2 = icVar;
                    veVar2.f15452i = icVar2;
                    if (icVar2 != null) {
                        String strValueOf = String.valueOf(nb.t(c.this.tt));
                        veVar2.sp = nb.sl(c.this.tt);
                        veVar2.f15453x = strValueOf;
                    }
                }
            }
        });
        sp();
    }

    public boolean isSerialRender() {
        com.byazt.im.ve veVar = this.f20890j;
        if (veVar != null) {
            return veVar.da();
        }
        return false;
    }

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        if (this.f20891l) {
            return;
        }
        h.c(this.tt, d10, str, str2);
        this.f20891l = true;
    }

    @Override // com.byazt.cc.TsView.c
    public void onAttachedToWindow() {
        AtomicBoolean atomicBoolean = this.f20884d;
        if (atomicBoolean != null && atomicBoolean.get()) {
            m.ve("开屏view重复展示");
            TsView tsView = this.f20883c;
            if (tsView != null && tsView.getCountDownView() != null && this.f20883c.getCountDownView().getView() != null) {
                this.f20883c.getCountDownView().getView().setVisibility(0);
            }
            tt(this.f20888i.get());
        }
        this.dz = 1;
    }

    @Override // com.byazt.cc.TsView.c
    public void onDetachedFromWindow() {
        if (this.ve != null) {
            this.ve.ve();
        }
        ic icVar = this.tt;
        if (icVar != null) {
            rl.c(icVar.rl());
            rl.c(this.tt.lw());
        }
        ic icVar2 = this.tt;
        cu.tt(icVar2 != null ? icVar2.eo() : 0);
        com.byazt.but.tt ttVar = this.pf;
        if (ttVar != null) {
            ttVar.c();
        }
        com.byazt.cc.sp.c(1, this.tt, this.aw, this.dz);
    }

    @Override // com.byazt.cc.TsView.c
    public void onWindowFocusChanged(boolean z10) {
        com.byazt.but.tt ttVar = this.pf;
        if (ttVar != null) {
            ttVar.c(z10);
        }
        this.dz++;
    }

    @Override // com.byazt.nc.x
    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
        ic icVar = this.tt;
        if (icVar != null) {
            rl.c(icVar.rl(), ttVar, com.byazt.ocd.tt.class);
        }
    }

    public void setAdShowCallback(final com.byazt.vis.ve veVar, final EmptyView emptyView) {
        veVar.c(new com.byazt.vis.ve.c() { // from class: com.byazt.uo.c.11
            @Override // com.byazt.vis.ve.c
            public boolean c() {
                veVar.c(emptyView);
                veVar.c(c.this.my);
                veVar.c(c.this.aw);
                veVar.c(c.this.bm);
                return c.this.qp.get();
            }
        });
    }

    @Override // com.byazt.nc.tt
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        if (veVar == null) {
            return;
        }
        this.uj = new SoftReference<>(veVar);
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
        this.bm = d10;
    }

    @Override // com.byazt.nc.tt
    public void setSplashAdListener(com.byazt.vw.c cVar) {
        this.f20902x = cVar;
    }

    @Override // com.byazt.nc.tt
    public void setSplashCardListener(com.byazt.vw.tt ttVar) {
        this.f20882b = ttVar;
        com.byazt.cc.c cVar = this.pu;
        if (cVar != null) {
            cVar.c(ttVar);
        }
    }

    @Override // com.byazt.nc.tt
    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
        this.f20896q = activity;
        c(viewGroup);
    }

    @Override // com.byazt.nc.tt
    public void showSplashView(ViewGroup viewGroup) {
    }

    public void syncCallbackStatus(int i10) {
        this.or = i10;
    }

    public synchronized void updateSplashResourceModel(x xVar, boolean z10) {
        if (this.rh == null || !z10) {
            this.rh = xVar;
            if (xVar != null) {
                updateSplashVideoFlag(xVar.n());
                this.md = xVar.uj();
            }
        }
    }

    public void updateSplashVideoFlag(boolean z10) {
        try {
            this.f20886h = z10;
            da();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.nc.tt
    public PluginValueSet values() {
        return com.byazt.rl.c.c(super.values()).c(1, p.uj).tt();
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
        if (this.lr) {
            return;
        }
        h.c(this.tt, d10);
        this.lr = true;
    }

    private void da() {
        if (!this.f20886h || this.f20883c == null) {
            return;
        }
        ic icVar = this.tt;
        if ((icVar == null || icVar.ek() == null || this.tt.ek().tt() != 0) ? false : true) {
            this.f20883c.setVideoViewVisibility(8);
        } else {
            this.f20883c.setVideoViewVisibility(0);
            this.f20883c.setVoiceViewListener(new View.OnClickListener() { // from class: com.byazt.uo.c.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    z.c(c.this.sv, c.this.tx ? "tt_splash_unmute" : "tt_splash_mute", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.uo.c.6.1
                        @Override // com.byazt.qr.c
                        public void c(Bitmap bitmap) {
                            c.this.f20883c.setVoiceViewImageDrawable(new BitmapDrawable(c.this.sv.getResources(), bitmap));
                        }
                    }, 320);
                    c cVar = c.this;
                    cVar.tx = !cVar.tx;
                    c cVar2 = c.this;
                    uj ujVar = cVar2.eo;
                    if (ujVar != null) {
                        ujVar.tt(cVar2.tx);
                    }
                }
            });
        }
    }

    private void sl() {
        EmptyView emptyView = new EmptyView(this.sv, this.f20883c, this.tt.m17if());
        emptyView.c(this.tt, this.aw);
        emptyView.setAdType(3);
        this.f20883c.addView(emptyView);
        emptyView.setCallback(new EmptyView.c() { // from class: com.byazt.uo.c.7
            public volatile boolean tt = false;

            private void ve() {
                boolean z10 = true;
                if (!this.tt) {
                    this.tt = true;
                    if (c.this.tt.i() == 4) {
                        com.byazt.bzd.x.c(new com.byazt.bwm.sp("splash_register_download") { // from class: com.byazt.uo.c.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                c cVar = c.this;
                                cVar.uj(pu.c(cVar.tt) != 1);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (c.this.ve != null) {
                    try {
                        c.this.ve.c();
                        c cVar = c.this;
                        if (pu.c(cVar.tt) == 1) {
                            z10 = false;
                        }
                        cVar.n(z10);
                    } catch (Exception unused) {
                    }
                }
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(boolean z10) {
                if (c.this.ve != null) {
                    if (z10) {
                        c.this.ve.tt();
                    } else {
                        com.byazt.pop.ve veVar = c.this.ve;
                    }
                }
                c.this.tt(z10 ? 12 : 13);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void tt() {
                c.this.tt(15);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c() {
                ve();
                c.this.tt(14);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(View view, Map<String, Object> map) {
                boolean andSet;
                a aVar;
                c cVar = c.this;
                cVar.ve(cVar.gt.get());
                ve();
                c.this.tt(11);
                c.this.f20892m = System.currentTimeMillis();
                tt ttVar = c.this.sp;
                if (ttVar != null) {
                    ttVar.onShow();
                }
                c cVar2 = c.this;
                ic icVar = cVar2.tt;
                if (icVar != null && (aVar = cVar2.nu) != null) {
                    icVar.da(aVar.n());
                    c.this.my.put("cache_type", Integer.valueOf(gt.tt().x(nb.t(c.this.tt))));
                    c cVar3 = c.this;
                    cVar3.my.put("splash_show_time_type", Integer.valueOf(cVar3.cu));
                }
                if (map != null && map.containsKey("show_send_type")) {
                    c.this.my.put("show_send_type", map.get("show_send_type"));
                }
                c cVar4 = c.this;
                cVar4.my.put("is_repeat", Boolean.valueOf(cVar4.gt.get()));
                c.this.qp.set(true);
                boolean z10 = false;
                if (!c.this.f20898s.get()) {
                    c.this.f20898s.set(true);
                    c cVar5 = c.this;
                    ic icVar2 = cVar5.tt;
                    String str = cVar5.aw;
                    c cVar6 = c.this;
                    com.byazt.ddx.uj.c(icVar2, str, cVar6.my, cVar6.bm);
                    com.byazt.pf.c.c().uj();
                    ic icVar3 = c.this.tt;
                    cu.c(icVar3 != null ? icVar3.eo() : 0);
                }
                c.this.yp();
                if (!c.this.f20903y) {
                    c.this.u();
                }
                c cVar7 = c.this;
                cVar7.tt(cVar7.f20888i.get());
                boolean zOq = gt.tt().oq();
                c cVar8 = c.this;
                if (cVar8.f20902x != null && (!(andSet = cVar8.gt.getAndSet(true)) || zOq)) {
                    c cVar9 = c.this;
                    cVar9.f20902x.c(cVar9);
                    ic icVar4 = c.this.tt;
                    if (icVar4 != null && icVar4.yv() && c.this.tt.yp() != null) {
                        com.byazt.yxu.c.c().c(c.this.sv, c.this.tt.yp().tt());
                    }
                    if (!andSet) {
                        if (view == null) {
                            view = c.this.f20883c;
                        }
                        if (view != null) {
                            c cVar10 = c.this;
                            ic icVar5 = cVar10.tt;
                            String str2 = cVar10.aw;
                            ic icVar6 = c.this.tt;
                            if (icVar6 != null && icVar6.up()) {
                                z10 = true;
                            }
                            com.byazt.iyp.tt.c(icVar5, str2, view, z10);
                        }
                    }
                }
                c.this.t();
                c.this.f20884d.set(true);
                TsView tsView = c.this.f20883c;
                if (tsView != null) {
                    tsView.setIsShowSuccess(true);
                }
                c.this.c(true);
            }
        });
        if (!this.f20903y) {
            emptyView.setNeedCheckingShow(true);
        }
        this.f20885da.put("splash_show_type", Integer.valueOf(this.f20900u));
        this.f20893n = new com.byazt.hkv.c(this.sv, this.tt, this.aw, 4) { // from class: com.byazt.uo.c.8
            @Override // com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, da daVar) {
                if ((view instanceof SplashClickBarBtn) && c.this.sl) {
                    return;
                }
                super.c(view, daVar);
            }
        };
        ((com.byazt.nat.c) this.f20893n.c(com.byazt.nat.c.class)).c(this);
        ((com.byazt.vis.c) this.f20893n.c(com.byazt.vis.c.class)).c(this.f20885da);
        setAdShowCallback((com.byazt.vis.ve) this.f20893n.c(com.byazt.vis.ve.class), emptyView);
        this.f20893n.tt(this.f20883c.getDislikeView());
        com.byazt.nat.c.InterfaceC0376c interfaceC0376c = new com.byazt.nat.c.InterfaceC0376c() { // from class: com.byazt.uo.c.9
            @Override // com.byazt.nat.c.InterfaceC0376c
            public void c(View view, int i10) {
                c.this.i();
                c cVar = c.this;
                com.byazt.ddx.uj.tt(cVar.f20892m, cVar.tt);
                c cVar2 = c.this;
                com.byazt.vw.c cVar3 = cVar2.f20902x;
                if (cVar3 != null) {
                    cVar3.tt(cVar2);
                }
                c.this.tt();
                c.this.a();
            }
        };
        ((com.byazt.nat.c) this.f20893n.c(com.byazt.nat.c.class)).c(interfaceC0376c);
        ic icVar = this.tt;
        if (icVar != null) {
            rl.tt(icVar.lw(), interfaceC0376c, com.byazt.nat.c.InterfaceC0376c.class);
        }
        this.f20883c.setSkipListener(new View.OnClickListener() { // from class: com.byazt.uo.c.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.byazt.omf.x.m().ve().ve(new C0452c(this.tt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        TsView tsView = this.f20883c;
        if (tsView != null && tsView.getChildCount() > 0) {
            for (int i10 = 0; i10 < this.f20883c.getChildCount(); i10++) {
                View childAt = this.f20883c.getChildAt(i10);
                if (childAt != null && (childAt instanceof EmptyView)) {
                    this.f20883c.removeView(childAt);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yp() {
        TsView tsView = this.f20883c;
        if (tsView != null) {
            tsView.c(this.tt.pl(), this.f20893n);
            if (pu.c(this.tt) == 1) {
                ve();
            }
        }
    }

    private boolean z() {
        return (!oz.c(this.tt) || this.yp || this.f20904z || this.rl) ? false : true;
    }

    public void i() {
        ve veVar = this.bx;
        if (veVar != null) {
            veVar.c(getLifecycleId(), com.byazt.hi.ve.CLICKED);
        }
    }

    public void n() {
        com.byazt.omf.x.m().da(true);
        com.byazt.aas.c cVarVe = com.byazt.omf.x.m().ve();
        if (cVarVe == null) {
            return;
        }
        cVarVe.ve((com.byazt.aas.c.tt) null);
    }

    public void sp() {
        ve veVar = this.bx;
        if (veVar != null) {
            veVar.c(getLifecycleId(), com.byazt.hi.ve.CREATED);
        }
    }

    public void x() {
        ve veVar = this.bx;
        if (veVar != null) {
            veVar.c(getLifecycleId(), com.byazt.hi.ve.STARTED);
        }
    }

    public void uj() {
        m();
        com.byazt.ddx.uj.tt(this.f20892m, this.tt);
        com.byazt.rgb.tt.ve(getLifecycleId(), 1);
        com.byazt.vw.c cVar = this.f20902x;
        if (cVar != null && !this.sl) {
            this.sl = true;
            cVar.c(this, 2);
            c(false);
        }
        n();
    }

    public void ve() {
        s sVarMf;
        ic icVar = this.tt;
        if (icVar == null || (sVarMf = icVar.mf()) == null || sVarMf.i() != 5) {
            return;
        }
        final int iZ = sVarMf.z();
        final s.c cVarYp = sVarMf.yp();
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.byazt.uo.c.13
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int iUj = pf.uj(c.this.sv, view.getWidth());
                int iUj2 = pf.uj(c.this.sv, view.getHeight());
                int iUj3 = pf.uj(c.this.sv, motionEvent.getX());
                int iUj4 = pf.uj(c.this.sv, motionEvent.getY());
                boolean z10 = iUj3 >= cVarYp.c() && iUj4 >= cVarYp.ve() && iUj - iUj3 >= cVarYp.tt() && iUj2 - iUj4 >= cVarYp.uj();
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            c.this.f20887hd = motionEvent.getY();
                        }
                    } else {
                        if (!z10) {
                            return false;
                        }
                        c.this.f20887hd = motionEvent.getY();
                        int iUj5 = pf.uj(c.this.sv, Math.abs(c.this.f20887hd - c.this.f20889ic));
                        if (c.this.f20887hd - c.this.f20889ic < 0.0f && iUj5 > iZ && c.this.f20893n != null) {
                            c cVar = c.this;
                            if (cVar.f20883c != null) {
                                cVar.f20893n.onClick(c.this.f20883c);
                            }
                        }
                    }
                } else {
                    if (!z10) {
                        return false;
                    }
                    c.this.f20889ic = motionEvent.getY();
                }
                return true;
            }
        };
        this.f20881a = onTouchListener;
        TsView tsView = this.f20883c;
        if (tsView != null) {
            tsView.setSlideUpTouchListener(onTouchListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(final boolean z10) {
        final String strUj = this.tt.uj();
        this.ve.c(new com.byazt.pop.c() { // from class: com.byazt.uo.c.3
            @Override // com.byazt.pop.c
            public void c() {
                SoftReference<com.byazt.ocd.ve> softReference = c.this.uj;
                if (softReference != null && softReference.get() != null) {
                    c.this.uj.get().c();
                }
                if (z10) {
                    com.byazt.nt.c.c(strUj);
                }
            }

            @Override // com.byazt.pop.c
            public void tt(long j10, long j11, String str, String str2) {
                SoftReference<com.byazt.ocd.ve> softReference = c.this.uj;
                if (softReference != null && softReference.get() != null) {
                    c.this.uj.get().tt(j10, j11, str, str2);
                }
                if (!z10 || j10 <= 0) {
                    return;
                }
                com.byazt.nt.c.tt(strUj, j10, j11);
            }

            @Override // com.byazt.pop.c
            public void ve(long j10, long j11, String str, String str2) {
                SoftReference<com.byazt.ocd.ve> softReference = c.this.uj;
                if (softReference != null && softReference.get() != null) {
                    c.this.uj.get().ve(j10, j11, str, str2);
                }
                if (!z10 || j10 <= 0) {
                    return;
                }
                com.byazt.nt.c.ve(strUj, j10, j11);
            }

            @Override // com.byazt.pop.c
            public void c(long j10, long j11, String str, String str2) {
                SoftReference<com.byazt.ocd.ve> softReference = c.this.uj;
                if (softReference != null && softReference.get() != null) {
                    c.this.uj.get().c(j10, j11, str, str2);
                }
                if (!z10 || j10 <= 0) {
                    return;
                }
                com.byazt.nt.c.c(strUj, j10, j11);
            }

            @Override // com.byazt.pop.c
            public void c(long j10, String str, String str2) {
                SoftReference<com.byazt.ocd.ve> softReference = c.this.uj;
                if (softReference != null && softReference.get() != null) {
                    c.this.uj.get().c(j10, str, str2);
                }
                if (z10) {
                    com.byazt.nt.c.tt(strUj);
                }
            }

            @Override // com.byazt.pop.c
            public void c(String str, String str2) {
                SoftReference<com.byazt.ocd.ve> softReference = c.this.uj;
                if (softReference != null && softReference.get() != null) {
                    c.this.uj.get().c(str, str2);
                }
                if (z10) {
                    com.byazt.nt.c.ve(strUj);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10) {
        this.iu.c(1.0f, i10);
    }

    public void c(com.byazt.im.ve veVar, com.byazt.gat.uj<i, sp> ujVar, com.byazt.tdq.c cVar) {
        if (veVar == null || ujVar == null) {
            return;
        }
        this.f20890j = veVar;
        this.f20897r = cVar;
        this.f20905zb.set(veVar.i());
        this.oz = ujVar;
        sp spVar = new sp();
        this.zm = spVar;
        spVar.tt(veVar.i());
        this.zm.c(veVar.tt());
        this.zm.c(this);
        this.sv = veVar.getContext();
        this.aw = veVar.a();
        this.nu = veVar.uj();
        boolean z10 = true;
        updateSplashResourceModel(veVar.n(), true);
        this.os = veVar.sp();
        a aVar = this.nu;
        ic icVarTt = aVar == null ? null : aVar.tt();
        this.tt = icVarTt;
        this.iu = new n(icVarTt, this.aw);
        boolean zJl = gt.tt().jl();
        if (!gt.tt().xx() && !zJl) {
            z10 = false;
        }
        this.f20903y = z10;
    }

    public void tt() {
        this.lo.postDelayed(new Runnable() { // from class: com.byazt.uo.c.12
            @Override // java.lang.Runnable
            public void run() {
                c.this.yp = true;
                if (!com.byazt.yzg.a.f22493c) {
                    if (c.this.f20901v != null) {
                        c.this.f20901v.tt();
                    }
                } else {
                    com.byazt.yzg.a.f22493c = false;
                    if (c.this.ve instanceof com.byazt.wz.c) {
                        ((com.byazt.wz.c) c.this.ve).x().c(new com.byazt.av.c() { // from class: com.byazt.uo.c.12.1
                            @Override // com.byazt.av.c
                            public void c() {
                            }

                            @Override // com.byazt.av.c
                            public void tt() {
                            }

                            @Override // com.byazt.av.c
                            public void ve() {
                                if (c.this.f20901v != null) {
                                    c.this.f20901v.tt();
                                }
                            }
                        });
                    }
                }
            }
        }, 100L);
    }

    public void tt(boolean z10) {
        if (z10 || this.f20883c == null) {
            return;
        }
        if (this.f20894nb.get() == 2 && iu.c(this.tt)) {
            com.byazt.but.tt ttVar = this.pf;
            if (ttVar != null) {
                ttVar.tt();
                return;
            }
            return;
        }
        com.byazt.but.uj countDownView = this.f20883c.getCountDownView();
        if (countDownView != null) {
            countDownView.setCountdownListener(new com.byazt.but.c() { // from class: com.byazt.uo.c.2
                @Override // com.byazt.but.c
                public void c() {
                    c.this.uj();
                }
            });
            countDownView.c(false);
            countDownView.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(boolean z10) {
        TsView tsView;
        Context context;
        this.ve = com.byazt.yih.x.c(this.sv, this.tt, this.aw);
        n(z10);
        bindDownloadAdapterToClickListener(this.ve);
        if (this.ve != null) {
            this.ve.c();
        }
        if (this.ve == null || (tsView = this.f20883c) == null || tsView.getParent() == null) {
            return;
        }
        try {
            context = ((View) this.f20883c.getParent()).getContext();
        } catch (Exception unused) {
            context = null;
        }
        if (context instanceof Activity) {
            this.ve.c((Activity) context, false);
        }
    }

    public void ve(final boolean z10) {
        ve veVar = this.bx;
        if (veVar != null) {
            veVar.c(getLifecycleId(), new com.byazt.ip.uj.c() { // from class: com.byazt.uo.c.5
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar).uj = z10;
                    }
                }
            });
            this.bx.c(getLifecycleId(), com.byazt.hi.ve.SHOWED);
        }
    }

    public void c(com.byazt.gat.uj<i, sp> ujVar) {
        if (this.nu == null) {
            this.zm.tt(3);
            this.zm.c("render splash ad model is null");
            ujVar.c(this.zm);
            return;
        }
        if (this.rh == null) {
            this.zm.tt(3);
            this.zm.c("render splash material is null");
            ujVar.c(this.zm);
            return;
        }
        if (this.tt == null) {
            return;
        }
        try {
            this.sl = false;
            TsView tsView = new TsView(this.sv, this.aw, this.tt);
            this.f20883c = tsView;
            tsView.setAttachedToWindowListener(this);
            da();
            this.f20883c.setCountDownViewPosition(this.tt);
            if (this.tt.mq() == 0) {
                TsView tsView2 = this.f20883c;
                if (tsView2 != null) {
                    tsView2.setAdlogoViewVisibility(8);
                }
            } else {
                TsView tsView3 = this.f20883c;
                if (tsView3 != null) {
                    tsView3.setAdlogoViewVisibility(0);
                }
            }
            if (this.tt.xr() <= 0) {
                c(3);
            } else {
                int iXr = this.tt.xr();
                this.f20899t = iXr;
                c(iXr);
            }
            c(this.tt);
            sl();
        } catch (ArrayIndexOutOfBoundsException e10) {
            m.uj("sbr", e10.getMessage());
        }
    }

    private void c(int i10) {
        TsView tsView = this.f20883c;
        if (tsView != null) {
            tsView.setCountDownTime(i10);
        }
    }

    private void c(ic icVar) {
        TsView tsView;
        if (icVar == null || (tsView = this.f20883c) == null) {
            return;
        }
        tsView.c(icVar);
    }

    public void c(boolean z10) {
        com.byazt.tdq.c cVar = this.f20897r;
        if (cVar != null) {
            cVar.c(this.oz, this.tt, this.os, z10);
        }
    }

    public void c() {
        com.byazt.rgb.tt.ve(getLifecycleId(), 1);
        if (!this.f20904z) {
            this.f20904z = true;
            this.sl = true;
            if (!TextUtils.isEmpty(this.tt.w_())) {
                com.byazt.ddx.uj.c(this.f20892m > 0 ? System.currentTimeMillis() - this.f20892m : 0L, this.tt);
            }
            m();
            com.byazt.ddx.uj.tt(this.f20892m, this.tt);
            c(false);
            n();
        }
        com.byazt.vw.c cVar = this.f20902x;
        if (cVar != null) {
            cVar.c(this, 1);
        }
    }

    private void c(ViewGroup viewGroup) {
        TsView tsView;
        if (!this.qy || (tsView = this.f20883c) == null || this.tt == null || this.f20901v == null || this.lt) {
            return;
        }
        ViewParent parent = tsView.getParent();
        this.lt = true;
        ViewGroup viewGroupC = this.f20901v.c();
        if (viewGroupC == null) {
            return;
        }
        uj ujVar = this.eo;
        if (ujVar != null) {
            ujVar.a();
        }
        if (viewGroupC.getParent() != null) {
            ((ViewGroup) viewGroupC.getParent()).removeView(viewGroupC);
        }
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).addView(viewGroupC);
            pf.x(this.f20883c);
            this.f20883c.removeAllViews();
            this.f20883c = null;
        }
        viewGroupC.setOnClickListener(null);
        viewGroupC.setOnTouchListener(null);
        if (this.gr) {
            uj ujVar2 = this.eo;
            if (ujVar2 != null) {
                ujVar2.da();
            }
            this.eo = null;
        }
        this.f20901v.c(this.eo, new com.byazt.cc.i.c() { // from class: com.byazt.uo.c.4
            @Override // com.byazt.cc.i.c
            public void c(long j10) {
                c.this.lo.removeMessages(1);
                if (j10 < 0) {
                    c.this.lo.sendEmptyMessageDelayed(1, 1000L);
                } else {
                    if (j10 == 0) {
                        c.this.lo.sendEmptyMessage(2);
                        return;
                    }
                    c.this.kp = j10;
                    c.this.tk = 0L;
                    c.this.lo.sendEmptyMessageDelayed(1, 1000L);
                }
            }

            @Override // com.byazt.cc.i.c
            public Context getActivity() {
                return c.this.f20896q;
            }

            @Override // com.byazt.cc.i.c
            public void tt() {
                c.this.kk = true;
                c.this.nu();
            }

            @Override // com.byazt.cc.i.c
            public void c() {
                c.this.lo.removeMessages(1);
            }
        });
    }
}
