package com.byazt.ouz;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.byazt.aas.cu;
import com.byazt.aas.h;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.omf.EmptyView;
import com.byazt.omf.zb;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 17})
public class gu extends tt {
    public static final String TAG = "TTNativeExpressAd";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f18441a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NativeExpressView f18442c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.dyf.tt f18443da;
    public EmptyView gr;
    public n my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public WeakReference<u> f18445n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f18446p;
    public final com.byazt.sy.n qy;
    public a rh;
    public final FrameLayout rl;
    public com.byazt.pop.ve sl;
    public com.byazt.pop.c sp;
    public final Context tt;
    public ic ve;
    public final com.byazt.ddx.n yv;
    public boolean zm;
    public String uj = com.byazt.dyf.tt.AD_TAG_FEED;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Double f18447t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f18448u = false;
    public boolean yp = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public AtomicBoolean f18449z = new AtomicBoolean(false);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public AtomicBoolean f18444m = new AtomicBoolean(false);
    public AtomicBoolean nu = new AtomicBoolean(false);
    public volatile boolean gt = false;
    public final ViewGroup gu = new FrameLayout(com.byazt.omf.gt.getContext());
    public final c md = new c() { // from class: com.byazt.ouz.gu.1
        @Override // com.byazt.ouz.c
        public void c(View view, int i10) {
            if (gu.this.f18441a != null) {
                gu.this.f18441a.c(gu.this.gu, i10);
            }
        }

        @Override // com.byazt.ouz.c
        public void tt(View view, int i10) {
            boolean zOq = com.byazt.omf.gt.tt().oq();
            if (gu.this.f18441a != null && (!gu.this.nu.getAndSet(true) || zOq)) {
                gu.this.f18441a.tt(gu.this.gu, i10);
                com.byazt.ete.nu nuVarYp = gu.this.ve.yp();
                if (gu.this.ve.yv() && nuVarYp != null) {
                    com.byazt.yxu.c.c().c(gu.this.tt, nuVarYp.tt());
                }
            }
            if (gu.this.qy == null || gu.this.qy.c() == null) {
                return;
            }
            gu.this.qy.c().uj();
        }

        @Override // com.byazt.ouz.c
        public void c(View view, String str, int i10) {
            if (gu.this.f18441a != null) {
                gu.this.f18441a.c(gu.this.gu, str, i10);
            }
        }

        @Override // com.byazt.ouz.c
        public void c(View view, float f10, float f11) {
            gu guVar = gu.this;
            if (guVar.f18442c != null && guVar.qy != null) {
                gu guVar2 = gu.this;
                guVar2.f18442c.setEasyPlayableSender(guVar2.qy.c());
                gu.this.qy.c(gu.this.f18442c.getEasyPlayableLayout(), gu.this.f18442c.getVideoContainer());
            }
            gu.this.gu.removeAllViews();
            gu.this.gu.addView(view);
            gu.this.gu.addView(gu.this.rl, new FrameLayout.LayoutParams((int) f10, (int) f11));
            if (gu.this.f18441a != null) {
                gu.this.f18441a.c(gu.this.gu, f10, f11);
            }
        }
    };

    public gu(Context context, final ic icVar, com.byazt.dj.tt ttVar, int i10) {
        this.zm = false;
        this.f18446p = 5;
        this.f18446p = i10;
        this.tt = context;
        this.ve = icVar;
        this.zm = com.byazt.omf.gt.tt().xx() || com.byazt.omf.gt.tt().jl();
        com.byazt.rgb.tt.c(icVar, ttVar, i10, getLifecycleId());
        initExpressView(context, icVar, ttVar);
        this.rl = new FrameLayout(context);
        this.yv = new com.byazt.ddx.n(this.ve, this.uj);
        this.qy = new com.byazt.sy.n(icVar, new com.byazt.sy.c() { // from class: com.byazt.ouz.gu.2
            @Override // com.byazt.sy.c
            public void c(ViewGroup viewGroup) {
            }

            @Override // com.byazt.ouz.sl
            public void n() {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.n();
                }
            }

            @Override // com.byazt.ouz.sl
            public void setPauseFromExpressView(boolean z10) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.setPauseFromExpressView(z10);
                }
            }

            @Override // com.byazt.ouz.sl
            public int tt() {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    return nativeExpressView.tt();
                }
                return 0;
            }

            @Override // com.byazt.ouz.sl
            public void uj(int i11) {
            }

            @Override // com.byazt.ouz.sl
            public int ve() {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    return nativeExpressView.ve();
                }
                return 0;
            }

            @Override // com.byazt.ouz.sl
            public void c(ic icVar2) {
            }

            @Override // com.byazt.ouz.sl
            public void uj() {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.uj();
                }
            }

            @Override // com.byazt.ouz.sl
            public void c(int i11) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.c(i11);
                }
            }

            @Override // com.byazt.ouz.sl
            public void tt(int i11) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.tt(i11);
                }
            }

            @Override // com.byazt.ouz.sl
            public void ve(int i11) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.ve(i11);
                }
            }

            @Override // com.byazt.ouz.sl
            public long c() {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    return nativeExpressView.c();
                }
                return 0L;
            }

            @Override // com.byazt.ouz.sl
            public void c(int i11, String str) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.c(i11, str);
                }
            }

            @Override // com.byazt.ouz.sl
            public void c(float f10) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.c(f10);
                }
            }

            @Override // com.byazt.sy.c
            public void c(View view) {
                gu.this.md.c(view, icVar.i());
                ic icVar2 = icVar;
                com.byazt.sy.ve.tt(icVar2, com.byazt.ete.p.sp(icVar2), true, null);
            }

            @Override // com.byazt.sy.c
            public void c(View view, int i11, com.byazt.sr.ve veVar, ir irVar) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.c(view, i11, veVar, -1);
                }
                com.byazt.sy.ve.c(icVar, (com.byazt.ete.u) irVar, false, (JSONObject) null, veVar instanceof com.byazt.ete.gr ? ((com.byazt.ete.gr) veVar).c().optBoolean("isLottieInternalClick", false) : false);
            }

            @Override // com.byazt.sy.c
            public void c(View view, int i11, com.byazt.sr.ve veVar, int i12) {
                NativeExpressView nativeExpressView = gu.this.f18442c;
                if (nativeExpressView != null) {
                    nativeExpressView.c(view, i11, veVar, i12);
                }
            }
        });
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void destroy() {
        super.destroy();
        com.byazt.rgb.tt.ve(getLifecycleId(), 2);
        NativeExpressView nativeExpressView = this.f18442c;
        if (nativeExpressView != null) {
            nativeExpressView.t();
        }
        this.yv.c(zb.tt(this.f18442c), 16);
        com.byazt.pop.ve veVar = this.sl;
        if (veVar != null) {
            veVar.ve();
        }
        com.byazt.sy.n nVar = this.qy;
        if (nVar != null) {
            nVar.tt();
        }
        ic icVar = this.ve;
        cu.tt(icVar != null ? icVar.eo() : 0);
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.tt.ve(getLifecycleId(), 3);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public com.byazt.nc.sp getDislikeDialog(Activity activity) {
        if (this.f18443da == null) {
            c(activity, (com.byazt.dhf.c) null);
        }
        return this.f18443da;
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public com.byazt.nc.uj getDislikeInfo() {
        ic icVar = this.ve;
        if (icVar == null || icVar.wq() == null) {
            return null;
        }
        this.ve.wq().tt(this.uj);
        return new com.byazt.vo.c(this.ve.wq());
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public View getExpressAdView() {
        com.byazt.dz.uj.c().c(this.ve);
        com.byazt.iyp.tt.c(this.ve.c());
        return this.gu;
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

    public void initExpressView(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        NativeExpressView nativeExpressView = new NativeExpressView(context, icVar, ttVar, this.uj);
        this.f18442c = nativeExpressView;
        this.gu.addView(nativeExpressView);
        c(this.f18442c, this.ve);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        if (this.yp) {
            return;
        }
        h.c(this.ve, d10, str, str2);
        this.yp = true;
    }

    @Override // com.byazt.nc.yp
    public void registerClickableRects(JSONObject jSONObject) {
        NativeExpressView nativeExpressView = this.f18442c;
        if (nativeExpressView != null) {
            nativeExpressView.c(jSONObject);
        }
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void render() {
        com.byazt.dyf.tt ttVar = this.f18443da;
        if (ttVar != null) {
            ttVar.setMonitorView(this.f18442c);
        }
        this.f18442c.m();
        com.byazt.dz.uj.c().c(this.ve);
    }

    public void setAdShowCallBack(final com.byazt.vis.ve veVar) {
        veVar.c(new com.byazt.vis.ve.c() { // from class: com.byazt.ouz.gu.7
            @Override // com.byazt.vis.ve.c
            public boolean c() {
                veVar.c(gu.this.gr);
                veVar.c(gu.this.tt());
                veVar.c(gu.this.uj);
                veVar.c(gu.this.f18447t);
                return gu.this.f18449z.get();
            }
        });
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setDislikeCallback(Activity activity, final com.byazt.dhf.c cVar) {
        if (cVar == null || activity == null) {
            return;
        }
        c(activity, new com.byazt.dhf.c(null) { // from class: com.byazt.ouz.gu.3
            @Override // com.byazt.dhf.c
            public void c(int i10, String str, boolean z10) {
                com.byazt.rgb.tt.ve(gu.this.getLifecycleId(), 1);
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
        });
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        com.byazt.pop.c cVarC = com.byazt.pop.c.C0410c.c(veVar);
        this.sp = cVarC;
        tt.c cVar = this.f18514x;
        if (cVar != null) {
            cVar.c(cVarC);
        }
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.tt ttVar) {
        this.f18441a = c.c(this, ttVar);
        this.f18442c.setExpressInteractionListener(this.md);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.x
    public void setPrice(Double d10) {
        this.f18447t = d10;
    }

    @Override // com.byazt.nc.yp
    public void unRegisterRects() {
        NativeExpressView nativeExpressView = this.f18442c;
        if (nativeExpressView != null) {
            nativeExpressView.qy();
        }
    }

    @Override // com.byazt.nc.yp
    public void uploadDislikeEvent(String str) {
        com.byazt.ddx.uj.tt(this.ve, str);
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.x
    public void win(Double d10) {
        if (this.f18448u) {
            return;
        }
        h.c(this.ve, d10);
        this.f18448u = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> tt() {
        HashMap map = new HashMap();
        yv.c(map, this.ve, this.f18442c);
        return map;
    }

    @Override // com.byazt.ouz.tt, com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.c cVar) {
        this.f18441a = c.c((com.byazt.nc.yp) this, cVar);
        this.f18442c.setExpressInteractionListener(this.md);
    }

    @Override // com.byazt.ouz.tt
    public void c(Dialog dialog) {
        if (dialog == null) {
            com.byazt.nr.m.ve("dialog is null, please check");
            return;
        }
        NativeExpressView nativeExpressView = this.f18442c;
        if (nativeExpressView != null) {
            nativeExpressView.setOuterDislike(dialog);
        }
    }

    private void c(Activity activity, com.byazt.dhf.c cVar) {
        if (this.f18443da == null) {
            com.byazt.dyf.tt ttVar = new com.byazt.dyf.tt(activity, this.ve.wq(), this.uj, false, com.byazt.xky.tt.c());
            this.f18443da = ttVar;
            com.byazt.tl.ve.c(activity, this.ve, ttVar);
        }
        com.byazt.dyf.tt ttVar2 = this.f18443da;
        if (ttVar2 != null) {
            ttVar2.setMonitorView(this.f18442c);
        }
        this.f18443da.setDislikeInteractionCallback(cVar);
        NativeExpressView nativeExpressView = this.f18442c;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.f18443da);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.gt) {
            if (this.sl != null) {
                a aVar = this.rh;
                if (aVar != null) {
                    ((com.byazt.nat.c) aVar.c(com.byazt.nat.c.class)).c(this.sl);
                }
                n nVar = this.my;
                if (nVar != null) {
                    ((com.byazt.nat.c) nVar.c(com.byazt.nat.c.class)).c(this.sl);
                }
                try {
                    c(this.sl, this.f18442c);
                    this.sl.c();
                    this.sl.c(this.f18514x);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.gt = true;
        if (this.ve.i() == 4) {
            com.byazt.bzd.x.c(new com.byazt.bwm.sp("native_register_download") { // from class: com.byazt.ouz.gu.4
                @Override // java.lang.Runnable
                public void run() {
                    gu guVar = gu.this;
                    guVar.sl = com.byazt.yih.x.c(guVar.tt, guVar.ve, guVar.uj);
                    if (gu.this.rh != null) {
                        ((com.byazt.nat.c) gu.this.rh.c(com.byazt.nat.c.class)).c(gu.this.sl);
                    }
                    if (gu.this.my != null) {
                        ((com.byazt.nat.c) gu.this.my.c(com.byazt.nat.c.class)).c(gu.this.sl);
                    }
                    gu guVar2 = gu.this;
                    if (guVar2.tt instanceof Activity) {
                        guVar2.sl.c((Activity) gu.this.tt, false);
                    }
                    gu guVar3 = gu.this;
                    guVar3.c(guVar3.sl, gu.this.f18442c);
                    gu.this.sl.c();
                    gu.this.sl.c(gu.this.f18514x);
                }
            });
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c(final NativeExpressView nativeExpressView, final ic icVar) {
        this.ve = icVar;
        nativeExpressView.setBackupListener(new com.byazt.xl.ve() { // from class: com.byazt.ouz.gu.5
            @Override // com.byazt.xl.ve
            public boolean c(ViewGroup viewGroup, int i10) {
                try {
                    ((NativeExpressView) viewGroup).my();
                    u uVar = new u(viewGroup.getContext());
                    com.byazt.btt.c.c(Integer.valueOf(icVar.hashCode()), gu.this);
                    gu guVar = gu.this;
                    uVar.c(guVar.ve, (NativeExpressView) viewGroup, guVar.sl);
                    uVar.setDislikeInner(gu.this.f18443da);
                    uVar.setDislikeOuter(gu.this.f18513i);
                    gu guVar2 = gu.this;
                    ic icVar2 = guVar2.ve;
                    if (icVar2 != null) {
                        guVar2.c(icVar2.wq());
                    }
                    gu.this.f18445n = new WeakReference<>(uVar);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        com.byazt.ddx.uj.c(icVar);
        EmptyView emptyViewC = c(nativeExpressView);
        this.gr = emptyViewC;
        if (emptyViewC == null) {
            EmptyView emptyView = new EmptyView(this.tt, nativeExpressView, icVar != null ? icVar.m17if() : 1000);
            this.gr = emptyView;
            emptyView.setAdType(this.f18446p);
            this.gr.c(this.ve, this.uj);
            nativeExpressView.addView(this.gr);
        }
        this.gr.setCallback(new EmptyView.c() { // from class: com.byazt.ouz.gu.6
            @Override // com.byazt.omf.EmptyView.c
            public void c(boolean z10) {
                Activity activity;
                WeakReference<Activity> weakReferenceC;
                Activity activity2;
                if (gu.this.sl != null) {
                    if (z10) {
                        gu.this.sl.tt();
                    } else {
                        com.byazt.pop.ve unused = gu.this.sl;
                    }
                }
                gu.this.yv.c(zb.tt(nativeExpressView), z10 ? 12 : 13);
                if (nb.ve(gu.this.ve)) {
                    if (!z10) {
                        WeakReference<Activity> weakReferenceC2 = com.byazt.omf.x.m().ve().c();
                        if (weakReferenceC2 == null || (activity = weakReferenceC2.get()) == null) {
                            return;
                        }
                        com.byazt.qqc.ve.c().tt((Context) activity, gu.this.ve, true);
                        return;
                    }
                    if (!nb.ve(gu.this.ve) || (weakReferenceC = com.byazt.omf.x.m().ve().c()) == null || (activity2 = weakReferenceC.get()) == null) {
                        return;
                    }
                    com.byazt.qqc.ve veVarC = com.byazt.qqc.ve.c();
                    Window window = activity2.getWindow();
                    ic icVar2 = gu.this.ve;
                    veVarC.c(window, icVar2, nb.zm(icVar2));
                }
            }

            @Override // com.byazt.omf.EmptyView.c
            public void tt() {
                WeakReference<Activity> weakReferenceC;
                Activity activity;
                if (gu.this.sl != null) {
                    gu.this.sl.ve();
                }
                gu.this.yv.c(zb.tt(nativeExpressView), 15);
                gu.this.f18449z.set(false);
                gu.this.f18444m.set(false);
                if (!nb.ve(gu.this.ve) || (weakReferenceC = com.byazt.omf.x.m().ve().c()) == null || (activity = weakReferenceC.get()) == null) {
                    return;
                }
                com.byazt.qqc.ve.c().tt(activity.getWindow(), gu.this.ve, true);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c() {
                WeakReference<Activity> weakReferenceC;
                Activity activity;
                gu.this.c();
                gu.this.yv.c(zb.tt(nativeExpressView), 14);
                if (!nb.ve(gu.this.ve) || (weakReferenceC = com.byazt.omf.x.m().ve().c()) == null || (activity = weakReferenceC.get()) == null) {
                    return;
                }
                com.byazt.qqc.ve veVarC = com.byazt.qqc.ve.c();
                Window window = activity.getWindow();
                ic icVar2 = gu.this.ve;
                veVarC.c(window, icVar2, nb.zm(icVar2));
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(View view, Map<String, Object> map) {
                gu.this.c();
                gu.this.yv.c(zb.tt(view), 11);
                Map mapTt = gu.this.tt();
                mapTt.put("is_repeat", Boolean.valueOf(gu.this.nu.get()));
                if (map != null && map.containsKey("show_send_type")) {
                    mapTt.put("show_send_type", map.get("show_send_type"));
                }
                mapTt.put("is_repeat", Boolean.valueOf(gu.this.nu.get()));
                gu.this.f18449z.set(true);
                if (!gu.this.f18444m.get()) {
                    gu.this.f18444m.set(true);
                    ic icVar2 = icVar;
                    gu guVar = gu.this;
                    com.byazt.ddx.uj.c(icVar2, guVar.uj, (Map<String, Object>) mapTt, guVar.f18447t);
                    com.byazt.pf.c.c().uj();
                    ic icVar3 = icVar;
                    cu.c(icVar3 != null ? icVar3.eo() : 0);
                }
                boolean z10 = (gu.this.f18441a == null || gu.this.nu.get()) ? false : true;
                gu.this.md.tt(view, icVar.i());
                if (z10) {
                    if (view == null) {
                        view = gu.this.gu;
                    }
                    ic icVar4 = icVar;
                    com.byazt.iyp.tt.c(icVar4, gu.this.uj, view, icVar4 != null && icVar4.up());
                }
                NativeExpressView nativeExpressView2 = gu.this.f18442c;
                if (nativeExpressView2 != null) {
                    nativeExpressView2.nu();
                    gu.this.f18442c.z();
                }
            }
        });
        Context context = this.tt;
        String str = this.uj;
        a aVar = new a(context, icVar, str, nb.uj(str));
        this.rh = aVar;
        setAdShowCallBack((com.byazt.vis.ve) aVar.c(com.byazt.vis.ve.class));
        this.rh.c(nativeExpressView);
        ((com.byazt.nat.c) this.rh.c(com.byazt.nat.c.class)).c(this);
        this.f18442c.setClickListener(this.rh);
        Context context2 = this.tt;
        String str2 = this.uj;
        n nVar = new n(context2, icVar, str2, nb.uj(str2));
        this.my = nVar;
        setAdShowCallBack((com.byazt.vis.ve) nVar.c(com.byazt.vis.ve.class));
        this.my.c(nativeExpressView);
        ((com.byazt.nat.c) this.my.c(com.byazt.nat.c.class)).c(this);
        this.f18442c.setClickCreativeListener(this.my);
        if (this.zm) {
            return;
        }
        this.gr.setNeedCheckingShow(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.pop.ve veVar, NativeExpressView nativeExpressView) {
        if (veVar == null || nativeExpressView == null) {
            return;
        }
        ic icVar = this.ve;
        tt.c cVar = new tt.c(this.sp, icVar != null ? icVar.uj() : "");
        this.f18514x = cVar;
        veVar.c(cVar);
    }

    private EmptyView c(ViewGroup viewGroup) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }
}
