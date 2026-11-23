package com.byazt.iym;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.aas.cu;
import com.byazt.aas.md;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.da;
import com.byazt.ete.ic;
import com.byazt.ete.lt;
import com.byazt.ete.xd;
import com.byazt.fk.u;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.ouz.NativeExpressView;
import com.byazt.ouz.a;
import com.byazt.ouz.yv;
import com.byazt.rpt.FullRewardExpressView;
import com.byazt.yih.x;
import com.haima.hmcp.proto.GSSDK;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_X_VALUE, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15603a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTBaseVideoActivity f15604c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.pop.ve f15605da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.hkv.c f15606i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f15607m;
    public FullRewardExpressView nu;
    public ViewGroup sl;
    public a sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f15609t;
    public final ic tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f15610u;
    public boolean uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.ouz.n f15611x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final boolean f15612z;
    public final AtomicBoolean yp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15608n = false;

    public tt(final TTBaseVideoActivity tTBaseVideoActivity, ic icVar, String str, boolean z10, boolean z11) {
        this.f15605da = null;
        this.f15604c = tTBaseVideoActivity;
        this.tt = icVar;
        this.ve = str;
        this.f15612z = z10;
        this.f15607m = z11;
        a aVar = new a(tTBaseVideoActivity, icVar, str, nb.uj(str)) { // from class: com.byazt.iym.tt.1
            @Override // com.byazt.ouz.a, com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, da daVar) {
                super.c(view, daVar);
                tTBaseVideoActivity.c(2);
            }
        };
        this.sp = aVar;
        ((com.byazt.vis.c) aVar.c(com.byazt.vis.c.class)).c(tTBaseVideoActivity.c(icVar));
        com.byazt.ouz.n nVar = new com.byazt.ouz.n(tTBaseVideoActivity, icVar, str, nb.uj(str)) { // from class: com.byazt.iym.tt.2
            @Override // com.byazt.ouz.n, com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, da daVar) {
                super.c(view, daVar);
                com.byazt.zo.tt ttVar = (com.byazt.zo.tt) this.f14955x.c(com.byazt.zo.tt.class);
                if (ttVar == null || !ttVar.tt(view)) {
                    return;
                }
                tTBaseVideoActivity.c(2);
            }
        };
        this.f15611x = nVar;
        ((com.byazt.vis.c) nVar.c(com.byazt.vis.c.class)).c(tTBaseVideoActivity.c(icVar));
        com.byazt.hkv.c cVar = new com.byazt.hkv.c(tTBaseVideoActivity, icVar, str, 7);
        this.f15606i = cVar;
        tTBaseVideoActivity.c((com.byazt.vis.ve) cVar.c(com.byazt.vis.ve.class));
        ((com.byazt.vis.c) this.f15606i.c(com.byazt.vis.c.class)).c(tTBaseVideoActivity.c(icVar));
        if (icVar.i() == 4) {
            this.f15605da = x.c(tTBaseVideoActivity, icVar, str);
            final String strUj = c().uj();
            this.f15605da.c(new com.byazt.pop.c() { // from class: com.byazt.iym.tt.3
                @Override // com.byazt.pop.c
                public void c() {
                    com.byazt.nt.c.c(strUj);
                }

                @Override // com.byazt.pop.c
                public void tt(long j10, long j11, String str2, String str3) {
                    com.byazt.nt.c.tt(strUj, j10, j11);
                }

                @Override // com.byazt.pop.c
                public void ve(long j10, long j11, String str2, String str3) {
                    com.byazt.nt.c.ve(strUj, j10, j11);
                }

                @Override // com.byazt.pop.c
                public void c(long j10, long j11, String str2, String str3) {
                    com.byazt.nt.c.c(strUj, j10, j11);
                }

                @Override // com.byazt.pop.c
                public void c(long j10, String str2, String str3) {
                    com.byazt.nt.c.tt(strUj);
                }

                @Override // com.byazt.pop.c
                public void c(String str2, String str3) {
                    com.byazt.nt.c.ve(strUj);
                }
            });
        }
    }

    public boolean a() {
        return this.uj;
    }

    public com.byazt.jzl.a da() {
        com.byazt.jzl.a aVarC = xd.c(1, this.tt);
        aVarC.setCid(this.tt.uj());
        aVarC.setWidth(100);
        aVarC.setHeight(100);
        aVarC.setLogExtra(this.tt.w_());
        aVarC.setQuiet(this.uj);
        return aVarC;
    }

    public void i() {
        if (this.f15612z) {
            this.f15604c.c(this.tt, this.f15606i);
        }
    }

    public com.byazt.zd.c.InterfaceC0501c n() {
        return new com.byazt.zd.c.InterfaceC0501c() { // from class: com.byazt.iym.tt.4
            @Override // com.byazt.zd.c.InterfaceC0501c
            public void c() {
                tt.this.f15609t = true;
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void tt() {
                tt.this.sp();
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void ve() {
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void c(int i10, String str) {
                tt.this.sp();
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void c(long j10, long j11) {
                pf.c((View) tt.this.sl, 8);
                tt.this.f15610u = j10;
            }
        };
    }

    public long sl() {
        return this.f15610u;
    }

    public void sp() {
        pf.c((View) this.sl, 0);
        this.f15604c.u();
    }

    public void t() {
        if (this.f15607m) {
            return;
        }
        this.f15607m = true;
        ic icVar = this.tt;
        com.byazt.dj.tt ttVarC = md.c(7, icVar == null ? null : icVar.jl());
        if (xd.z(this.tt) != null) {
            com.byazt.jzl.a aVarC = xd.c(1, this.tt);
            aVarC.putExtra("material_meta", this.tt);
            aVarC.putExtra("ad_slot", Integer.valueOf(ttVarC != null ? ttVarC.gt() : 0));
            com.byazt.btt.ve.c(aVarC, new com.byazt.fk.da.c() { // from class: com.byazt.iym.tt.5
                @Override // com.byazt.fk.da.c
                public void cancel(u uVar, int i10) {
                }

                @Override // com.byazt.fk.da.c
                public void onVideoPreloadFail(u uVar, int i10, String str) {
                    uVar.getUrl();
                    uVar.getPreloadSize();
                }

                @Override // com.byazt.fk.da.c
                public void onVideoPreloadSuccess(u uVar, int i10) {
                    uVar.getUrl();
                    uVar.getPreloadSize();
                }
            });
        }
    }

    public String tt() {
        return this.ve;
    }

    public int uj() {
        if (!lt.da(this.tt)) {
            return 1;
        }
        if (this.f15609t) {
            int iTt = lt.tt(this.tt) - this.f15603a;
            this.f15603a = lt.tt(this.tt);
            return iTt;
        }
        if (this.f15603a >= lt.tt(this.tt)) {
            return 0;
        }
        this.f15603a++;
        return 1;
    }

    public com.byazt.hkv.c ve() {
        return this.f15606i;
    }

    public void x() {
        com.byazt.pop.ve veVar = this.f15605da;
        if (veVar != null) {
            veVar.ve();
        }
        FullRewardExpressView fullRewardExpressView = this.nu;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.t();
        }
        ic icVar = this.tt;
        cu.tt(icVar != null ? icVar.eo() : 0);
    }

    public void tt(boolean z10) {
        this.tt.m(z10);
    }

    public FullRewardExpressView tt(float f10, float f11) {
        if (this.nu == null) {
            c(f10, f11);
        }
        return this.nu;
    }

    public ic c() {
        return this.tt;
    }

    public void c(ViewGroup viewGroup, ViewGroup viewGroup2, FullRewardExpressView fullRewardExpressView) {
        this.sl = viewGroup2;
        if (viewGroup == null || fullRewardExpressView == null || c() == null) {
            return;
        }
        com.byazt.pop.ve veVar = this.f15605da;
        if (veVar != null) {
            veVar.tt();
            if (fullRewardExpressView.getContext() != null && (fullRewardExpressView.getContext() instanceof Activity)) {
                this.f15605da.c((Activity) fullRewardExpressView.getContext(), false);
            }
        }
        this.sp.c(fullRewardExpressView);
        ((com.byazt.nat.c) this.sp.c(com.byazt.nat.c.class)).c(this.f15605da);
        fullRewardExpressView.setClickListener(this.sp);
        this.f15611x.c(fullRewardExpressView);
        ((com.byazt.nat.c) this.f15611x.c(com.byazt.nat.c.class)).c(this.f15605da);
        fullRewardExpressView.setClickCreativeListener(this.f15611x);
        this.f15606i.c(viewGroup);
        ((com.byazt.nat.c) this.f15606i.c(com.byazt.nat.c.class)).c(this.f15605da);
        ImageView imageView = new ImageView(this.f15604c);
        com.byazt.xky.tt.c(this.tt.pa().get(0)).to(imageView);
        this.sl.addView(imageView);
    }

    public void c(boolean z10) {
        this.uj = z10;
    }

    public void c(NativeExpressView nativeExpressView) {
        if (this.yp.getAndSet(true)) {
            return;
        }
        Map<String, Object> mapC = this.f15604c.c(this.tt);
        yv.c(mapC, this.tt, nativeExpressView);
        com.byazt.ddx.uj.c(this.tt, this.ve, mapC, this.f15604c.hd());
        com.byazt.pf.c.c().uj();
        ic icVar = this.tt;
        cu.c(icVar != null ? icVar.eo() : 0);
    }

    public void c(float f10, float f11) {
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this.f15604c, c(), md.c(7, String.valueOf(nb.t(c())), f10, f11, c()), tt(), false, null);
        this.nu = fullRewardExpressView;
        fullRewardExpressView.getAdShowTime().c(true);
        this.nu.setExpressInteractionListener(new com.byazt.ouz.c() { // from class: com.byazt.iym.tt.6
            @Override // com.byazt.ouz.c
            public void c(View view, float f12, float f13) {
                tt.this.f15608n = true;
            }
        });
        this.nu.m();
    }
}
