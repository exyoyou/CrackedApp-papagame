package com.byazt.tp;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.aas.cu;
import com.byazt.aas.h;
import com.byazt.bzd.x;
import com.byazt.dna.qp;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.nc.sp;
import com.byazt.nc.uj;
import com.byazt.nc.yp;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.omf.EmptyView;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.byazt.ouz.NativeExpressView;
import com.byazt.ouz.a;
import com.byazt.ouz.n;
import com.byazt.ouz.yv;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 436, 13})
public class tt extends com.byazt.ouz.tt implements qp.c {
    public static final String TAG = "TTBannerExpressAd";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.pop.c f20348a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f20349c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.pop.ve f20350da;
    public a gr;
    public volatile View gu;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ouz.c f20352n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f20353p;
    public com.byazt.dyf.tt sl;
    public WeakReference<BannerExpressBackupView> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public d f20354t;
    public final Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f20355u;
    public com.byazt.dj.tt uj;
    public ic ve;
    public com.byazt.dhf.c yp;
    public NativeExpressView yv;
    public n zm;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f20356z = com.byazt.dyf.tt.AD_TAG_BANNER;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Queue<Long> f20351m = new LinkedList();
    public Double nu = null;
    public boolean rh = false;
    public boolean my = false;
    public AtomicBoolean gt = new AtomicBoolean(false);
    public AtomicBoolean rl = new AtomicBoolean(false);
    public AtomicBoolean qy = new AtomicBoolean(false);

    public tt(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        this.f20353p = false;
        this.tt = context;
        this.ve = icVar;
        this.uj = ttVar;
        boolean z10 = true;
        com.byazt.rgb.tt.c(icVar, ttVar, 1, getLifecycleId());
        boolean zJl = gt.tt().jl();
        if (!gt.tt().xx() && !zJl) {
            z10 = false;
        }
        this.f20353p = z10;
        c(context, icVar, ttVar);
        c(this.f20349c.getCurView(), this.ve, false);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void destroy() {
        super.destroy();
        x.c(new Runnable() { // from class: com.byazt.tp.tt.1
            @Override // java.lang.Runnable
            public void run() {
                c cVar = tt.this.f20349c;
                if (cVar != null) {
                    cVar.uj();
                }
            }
        });
        d dVar = this.f20354t;
        if (dVar != null) {
            dVar.removeCallbacksAndMessages(null);
            this.f20354t = null;
        }
        ic icVar = this.ve;
        cu.tt(icVar != null ? icVar.eo() : 0);
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.tt.ve(getLifecycleId(), 3);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public sp getDislikeDialog(Activity activity) {
        if (this.sl == null) {
            c(activity, (com.byazt.dhf.c) null);
        }
        return this.sl;
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public uj getDislikeInfo() {
        ic icVar = this.ve;
        if (icVar == null || icVar.wq() == null) {
            return null;
        }
        this.ve.wq().tt(this.f20356z);
        return new com.byazt.vo.c(this.ve.wq());
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public View getExpressAdView() {
        com.byazt.dz.uj.c().c(this.ve).c(1);
        com.byazt.iyp.tt.c(this.ve.c());
        return this.f20349c;
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public int getImageMode() {
        ic icVar = this.ve;
        if (icVar == null) {
            return -1;
        }
        return icVar.id();
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public int getInteractionType() {
        ic icVar = this.ve;
        if (icVar == null) {
            return -1;
        }
        return icVar.i();
    }

    @Override // com.byazt.nc.yp
    public String getLifecycleId() {
        ic icVar = this.ve;
        if (icVar != null) {
            return icVar.zm();
        }
        return null;
    }

    @Override // com.byazt.ouz.tt
    public ic getMaterialMeta() {
        return this.ve;
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public Map<String, Object> getMediaExtraInfo() {
        ic icVar = this.ve;
        if (icVar != null) {
            return icVar.yt();
        }
        return null;
    }

    @Override // com.byazt.nc.yp
    public com.byazt.sbm.n getMediationManager() {
        return new com.byazt.ah.ve();
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what == 112201 && this.gu != null && this.gu.isShown()) {
            uj();
        }
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        if (this.my) {
            return;
        }
        h.c(this.ve, d10, str, str2);
        this.my = true;
    }

    @Override // com.byazt.nc.yp
    public void registerClickableRects(JSONObject jSONObject) {
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void render() {
        com.byazt.dyf.tt ttVar = this.sl;
        if (ttVar != null) {
            ttVar.setMonitorView(this.f20349c);
        }
        this.f20349c.n();
        com.byazt.dz.uj.c().c(this.ve).c(1);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setDislikeCallback(Activity activity, final com.byazt.dhf.c cVar) {
        if (cVar == null || activity == null) {
            return;
        }
        com.byazt.dhf.c cVar2 = new com.byazt.dhf.c(null) { // from class: com.byazt.tp.tt.2
            @Override // com.byazt.dhf.c
            public void c(int i10, String str, boolean z10) {
                com.byazt.rgb.tt.ve(tt.this.getLifecycleId(), 1);
                cVar.c(i10, str, z10);
            }

            @Override // com.byazt.dhf.c
            public void tt() {
                cVar.tt();
            }

            @Override // com.byazt.dhf.c
            public void c() {
                cVar.c();
            }
        };
        this.yp = cVar2;
        c(activity, cVar2);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        com.byazt.pop.c cVarC = com.byazt.pop.c.C0410c.c(veVar);
        this.f20348a = cVarC;
        com.byazt.ouz.tt.c cVar = this.f18514x;
        if (cVar != null) {
            cVar.c(cVarC);
        }
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.tt ttVar) {
        com.byazt.ouz.c cVarC = com.byazt.ouz.c.c(this, ttVar);
        this.f20352n = cVarC;
        this.f20349c.setExpressInteractionListener(cVarC);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.x
    public void setPrice(Double d10) {
        this.nu = d10;
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setSlideIntervalTime(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.f20356z = com.byazt.dyf.tt.AD_TAG_EXPRESS_BANNER;
        c(this.f20349c.getCurView(), this.ve, false);
        this.f20349c.setDuration(1000);
        if (i10 < 30000) {
            i10 = 30000;
        } else if (i10 > 120000) {
            i10 = 120000;
        }
        this.f20355u = i10;
        this.f20354t = new d(Looper.getMainLooper(), this);
    }

    @Override // com.byazt.nc.yp
    public void unRegisterRects() {
    }

    @Override // com.byazt.nc.yp
    public void uploadDislikeEvent(String str) {
        com.byazt.ddx.uj.tt(this.ve, str);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.x
    public void win(Double d10) {
        if (this.rh) {
            return;
        }
        h.c(this.ve, d10);
        this.rh = true;
    }

    private void uj() {
        bm bmVar = new bm();
        bmVar.sp = 2;
        gt.c().c(this.uj, bmVar, 1, new com.byazt.gk.c(new gu.tt() { // from class: com.byazt.tp.tt.8
            @Override // com.byazt.omf.gu.tt
            public void c(int i10, String str, com.byazt.ete.tt ttVar) {
                tt.this.tt();
            }

            @Override // com.byazt.omf.gu.tt
            public void c(com.byazt.ete.c cVar, com.byazt.ete.tt ttVar) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(cVar.tt());
                if (copyOnWriteArrayList.isEmpty()) {
                    tt.this.tt();
                    return;
                }
                ic icVar = (ic) copyOnWriteArrayList.get(0);
                tt ttVar2 = tt.this;
                ttVar2.f20349c.c(icVar, ttVar2.uj);
                tt.this.c(icVar);
                tt.this.f20349c.ve();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        d dVar = this.f20354t;
        if (dVar != null) {
            dVar.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        d dVar;
        if (this.gu == null || !this.gu.isShown() || (dVar = this.f20354t) == null) {
            return;
        }
        dVar.removeCallbacksAndMessages(null);
        this.f20354t.sendEmptyMessageDelayed(112201, this.f20355u);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.c cVar) {
        com.byazt.ouz.c cVarC = com.byazt.ouz.c.c((yp) this, cVar);
        this.f20352n = cVarC;
        this.f20349c.setExpressInteractionListener(cVarC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(ic icVar) {
        Queue<Long> queue = this.f20351m;
        if (queue == null || queue.size() <= 0 || icVar == null) {
            return;
        }
        try {
            long jLongValue = this.f20351m.poll().longValue();
            if (jLongValue > 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(SystemClock.elapsedRealtime() - jLongValue);
                String string = sb2.toString();
                com.byazt.ddx.n nVar = new com.byazt.ddx.n(this.ve, this.f20356z);
                nVar.c(1.0f);
                com.byazt.ddx.uj.c(string, icVar, this.f20356z, 15, nVar.tt());
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void c(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        if (context == null) {
            return;
        }
        this.f20349c = new c(context, icVar, ttVar);
    }

    @Override // com.byazt.ouz.tt
    public void c(Dialog dialog) {
        if (dialog == null) {
            m.ve("dialog is null, please check");
            return;
        }
        c cVar = this.f20349c;
        if (cVar == null || cVar.getCurView() == null) {
            return;
        }
        this.f20349c.getCurView().setOuterDislike(dialog);
    }

    private void c(Activity activity, com.byazt.dhf.c cVar) {
        if (this.sl == null) {
            com.byazt.dyf.tt ttVar = new com.byazt.dyf.tt(activity, this.ve.wq(), this.f20356z, false, com.byazt.xky.tt.c());
            this.sl = ttVar;
            com.byazt.tl.ve.c(activity, this.ve, ttVar);
        }
        com.byazt.dyf.tt ttVar2 = this.sl;
        if (ttVar2 != null) {
            ttVar2.setMonitorView(this.f20349c);
        }
        this.sl.setDislikeInteractionCallback(cVar);
        c cVar2 = this.f20349c;
        if (cVar2 == null || cVar2.getCurView() == null) {
            return;
        }
        this.f20349c.getCurView().setDislike(this.sl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.ve.i() == 4) {
            x.c(new com.byazt.bwm.sp("banner_express_register_download") { // from class: com.byazt.tp.tt.3
                @Override // java.lang.Runnable
                public void run() {
                    if (tt.this.ve.i() == 4) {
                        tt ttVar = tt.this;
                        ttVar.f20350da = com.byazt.yih.x.c(ttVar.tt, ttVar.ve, ttVar.f20356z);
                        tt.this.f20350da.tt();
                        tt ttVar2 = tt.this;
                        if (ttVar2.tt instanceof Activity) {
                            ttVar2.f20350da.c((Activity) tt.this.tt, false);
                        }
                        if (tt.this.gr != null) {
                            ((com.byazt.nat.c) tt.this.gr.c(com.byazt.nat.c.class)).c(tt.this.f20350da);
                        }
                        if (tt.this.zm != null) {
                            ((com.byazt.nat.c) tt.this.zm.c(com.byazt.nat.c.class)).c(tt.this.f20350da);
                        }
                        tt ttVar3 = tt.this;
                        ttVar3.c(ttVar3.f20350da, tt.this.yv);
                        tt.this.f20350da.c();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ic icVar) {
        if (this.f20349c.getNextView() == null || !this.f20349c.tt()) {
            return;
        }
        c(this.f20349c.getNextView(), icVar.wq());
        this.qy.set(false);
        c(this.f20349c.getNextView(), icVar, true);
    }

    private void c(NativeExpressView nativeExpressView, com.byazt.vo.tt ttVar) {
        if (ttVar == null) {
            return;
        }
        if (this.yp != null) {
            this.sl.resetData(ttVar);
            if (nativeExpressView != null) {
                nativeExpressView.setDislike(this.sl);
            }
        }
        if (this.f18513i != null) {
            c(ttVar);
            if (nativeExpressView != null) {
                nativeExpressView.setOuterDislike(this.f18513i);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c(final NativeExpressView nativeExpressView, final ic icVar, boolean z10) {
        if (nativeExpressView == null || icVar == null) {
            return;
        }
        this.yv = nativeExpressView;
        ic icVar2 = this.ve;
        if (icVar2 != null) {
            cu.tt(icVar2.eo());
        }
        this.ve = icVar;
        nativeExpressView.setBackupListener(new com.byazt.xl.ve() { // from class: com.byazt.tp.tt.4
            @Override // com.byazt.xl.ve
            public boolean c(ViewGroup viewGroup, int i10) {
                try {
                    ((NativeExpressView) viewGroup).my();
                    BannerExpressBackupView bannerExpressBackupView = new BannerExpressBackupView(viewGroup.getContext());
                    tt ttVar = tt.this;
                    bannerExpressBackupView.c(ttVar.ve, (NativeExpressView) viewGroup, ttVar.f20350da);
                    bannerExpressBackupView.setDislikeInner(tt.this.sl);
                    bannerExpressBackupView.setDislikeOuter(tt.this.f18513i);
                    tt ttVar2 = tt.this;
                    if (ttVar2.ve != null) {
                        ttVar2.c(icVar.wq());
                    }
                    tt.this.sp = new WeakReference<>(bannerExpressBackupView);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        com.byazt.ddx.uj.c(icVar);
        EmptyView emptyViewC = c(nativeExpressView);
        if (emptyViewC == null) {
            EmptyView emptyView = new EmptyView(this.tt, nativeExpressView, icVar.m17if());
            emptyView.setAdType(1);
            emptyView.c(this.ve, this.f20356z);
            nativeExpressView.addView(emptyView);
            emptyViewC = emptyView;
        }
        this.gu = emptyViewC;
        emptyViewC.setCallback(new EmptyView.c() { // from class: com.byazt.tp.tt.5
            @Override // com.byazt.omf.EmptyView.c
            public void c(boolean z11) {
                String unused = tt.this.f20356z;
                if (tt.this.f20350da != null) {
                    if (z11) {
                        tt.this.f20350da.tt();
                    } else {
                        com.byazt.pop.ve unused2 = tt.this.f20350da;
                    }
                }
                if (z11) {
                    tt.this.tt();
                } else {
                    tt.this.ve();
                }
                tt.this.c(z11, icVar);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void tt() {
                if (tt.this.f20350da != null) {
                    tt.this.f20350da.ve();
                }
                tt.this.tt(icVar);
                tt.this.gt.set(false);
                tt.this.rl.set(false);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c() {
                tt.this.c();
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(View view, Map<String, Object> map) {
                if (tt.this.f20351m != null) {
                    tt.this.f20351m.offer(Long.valueOf(SystemClock.elapsedRealtime()));
                }
                Map mapC = tt.this.c(nativeExpressView, icVar);
                if (map != null && map.containsKey("show_send_type")) {
                    mapC.put("show_send_type", map.get("show_send_type"));
                }
                mapC.put("is_repeat", Boolean.valueOf(tt.this.qy.get()));
                tt.this.gt.set(true);
                if (!tt.this.rl.get()) {
                    tt.this.rl.set(true);
                    com.byazt.ddx.uj.c(icVar, tt.this.f20356z, (Map<String, Object>) mapC, tt.this.nu);
                    com.byazt.pf.c.c().uj();
                    ic icVar3 = icVar;
                    cu.c(icVar3 != null ? icVar3.eo() : 0);
                }
                boolean zOq = gt.tt().oq();
                boolean andSet = tt.this.qy.getAndSet(true);
                com.byazt.ouz.c cVar = tt.this.f20352n;
                if (cVar != null && (!andSet || zOq)) {
                    cVar.tt(view, icVar.i());
                    if (icVar.yv() && icVar.yp() != null) {
                        com.byazt.yxu.c.c().c(tt.this.tt, icVar.yp().tt());
                    }
                }
                if (!andSet) {
                    if (view == null) {
                        view = nativeExpressView;
                    }
                    com.byazt.iyp.tt.c(icVar, tt.this.f20356z, view, icVar.up());
                }
                tt.this.tt();
                c cVar2 = tt.this.f20349c;
                if (cVar2 == null || cVar2.getCurView() == null) {
                    return;
                }
                tt.this.f20349c.getCurView().nu();
                tt.this.f20349c.getCurView().z();
            }
        });
        a aVar = new a(this.tt, icVar, this.f20356z, 2);
        this.gr = aVar;
        final com.byazt.vis.ve veVar = (com.byazt.vis.ve) aVar.c(com.byazt.vis.ve.class);
        final EmptyView emptyView2 = emptyViewC;
        veVar.c(new com.byazt.vis.ve.c() { // from class: com.byazt.tp.tt.6
            @Override // com.byazt.vis.ve.c
            public boolean c() {
                veVar.c(emptyView2);
                veVar.c(tt.this.c(nativeExpressView, icVar));
                veVar.c(tt.this.f20356z);
                veVar.c(tt.this.nu);
                return tt.this.gt.get();
            }
        });
        this.gr.c(nativeExpressView);
        ((com.byazt.nat.c) this.gr.c(com.byazt.nat.c.class)).c(this);
        nativeExpressView.setClickListener(this.gr);
        n nVar = new n(this.tt, icVar, this.f20356z, 2);
        this.zm = nVar;
        final com.byazt.vis.ve veVar2 = (com.byazt.vis.ve) nVar.c(com.byazt.vis.ve.class);
        veVar2.c(new com.byazt.vis.ve.c() { // from class: com.byazt.tp.tt.7
            @Override // com.byazt.vis.ve.c
            public boolean c() {
                veVar2.c(emptyView2);
                veVar2.c(tt.this.c(nativeExpressView, icVar));
                veVar2.c(tt.this.f20356z);
                veVar2.c(tt.this.nu);
                return tt.this.gt.get();
            }
        });
        this.zm.c(nativeExpressView);
        ((com.byazt.nat.c) this.zm.c(com.byazt.nat.c.class)).c(this);
        nativeExpressView.setClickCreativeListener(this.zm);
        if (!this.f20353p) {
            emptyViewC.setNeedCheckingShow(true);
        }
        if (z10) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> c(NativeExpressView nativeExpressView, ic icVar) {
        HashMap map = new HashMap();
        yv.c(map, this.ve, nativeExpressView);
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.pop.ve veVar, NativeExpressView nativeExpressView) {
        if (veVar == null || nativeExpressView == null) {
            return;
        }
        ic icVar = this.ve;
        com.byazt.ouz.tt.c cVar = new com.byazt.ouz.tt.c(this.f20348a, icVar != null ? icVar.uj() : "");
        this.f18514x = cVar;
        veVar.c(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10, ic icVar) {
        Queue<Long> queue = this.f20351m;
        if (queue == null) {
            return;
        }
        try {
            if (z10) {
                queue.offer(Long.valueOf(SystemClock.elapsedRealtime()));
                return;
            }
            if (queue.size() > 0) {
                long jLongValue = this.f20351m.poll().longValue();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(SystemClock.elapsedRealtime() - jLongValue);
                String string = sb2.toString();
                com.byazt.ddx.n nVar = new com.byazt.ddx.n(this.ve, this.f20356z);
                nVar.c(1.0f);
                com.byazt.ddx.uj.c(string, icVar, this.f20356z, 13, nVar.tt());
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private EmptyView c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            try {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof EmptyView) {
                    return (EmptyView) childAt;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
