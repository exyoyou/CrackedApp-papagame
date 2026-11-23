package com.byazt.fcd;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.byazt.aas.md;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.aas.rl;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.my;
import com.byazt.ete.pu;
import com.byazt.ete.xd;
import com.byazt.go.AbstractEndCardFrameLayout;
import com.byazt.go.CommonEndCardFrameLayout;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 20})
public abstract class c extends tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14069a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTBaseVideoActivity f14070c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.dqg.n f14072da;
    public com.byazt.kcl.c gr;
    public com.byazt.kcl.tt gt;
    public com.byazt.ouz.n gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.byazt.biq.ve f14073h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.dqg.tt f14074i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f14075m;
    public com.byazt.kcl.a my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14076n;
    public boolean nu;
    public com.byazt.ouz.a qy;
    public com.byazt.kcl.n rh;
    public com.byazt.kcl.uj rl;
    public AbstractEndCardFrameLayout sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f14078t;
    public ic tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f14079u;
    public float uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.hkv.n f14080x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f14081z;
    public int sp = -1;
    public int zm = -5;
    public boolean yv = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f14077p = false;
    public int md = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.byazt.ouz.sl f14071d = new com.byazt.ouz.sl() { // from class: com.byazt.fcd.c.1
        @Override // com.byazt.ouz.sl
        public void a() {
            yp.c().uj(c.this.tt, "stats_reward_full_click_express_close");
            c.this.rh.c();
        }

        @Override // com.byazt.ouz.sl
        public void c(int i10, String str) {
        }

        @Override // com.byazt.ouz.sl
        public void da() {
            c.this.f14070c.x(3);
        }

        @Override // com.byazt.ouz.sl
        public void i() {
            c.this.rh.ve();
        }

        @Override // com.byazt.ouz.sl
        public void n(int i10) {
            c.this.f14070c.i(i10);
        }

        @Override // com.byazt.ouz.sl
        public void setPauseFromExpressView(boolean z10) {
            c.this.f14070c.m(1);
        }

        @Override // com.byazt.ouz.sl
        public void sp() {
            yp.c().uj(c.this.tt, "stats_reward_full_click_express_close");
            c.this.f14070c.finish();
        }

        @Override // com.byazt.ouz.sl
        public int tt() {
            if (c.this.x(true)) {
                int i10 = c.this.f14070c.kp() ? 3 : 2;
                if (c.this.f14070c.oz()) {
                    return 5;
                }
                return i10;
            }
            if (c.this.f14072da.tt()) {
                return 4;
            }
            if (c.this.f14072da.ve()) {
                return 5;
            }
            if (c.this.my.uj()) {
                return 1;
            }
            if (c.this.my.tt()) {
                return 2;
            }
            c.this.my.ve();
            return 3;
        }

        @Override // com.byazt.ouz.sl
        public void uj() {
            c.this.yv = true;
        }

        @Override // com.byazt.ouz.sl
        public int ve() {
            return c.this.yv();
        }

        @Override // com.byazt.ouz.sl
        public void x() {
            c.this.f14070c.q();
        }

        @Override // com.byazt.ouz.sl
        public void c(boolean z10) {
            c cVar = c.this;
            if (cVar.f14079u != z10) {
                cVar.f14079u = z10;
                cVar.rh.tt();
            }
        }

        @Override // com.byazt.ouz.sl
        public void n() {
            c.this.yv = false;
        }

        @Override // com.byazt.ouz.sl
        public void uj(int i10) {
            c.this.f14070c.ve(i10);
        }

        @Override // com.byazt.ouz.sl
        public void ve(int i10) {
            c cVar = c.this;
            cVar.f14077p = true;
            cVar.f14070c.rh(i10);
        }

        @Override // com.byazt.ouz.sl
        public void c(int i10) {
            if (i10 != 1) {
                if (i10 == 2) {
                    c.this.my.zm();
                    return;
                }
                if (i10 == 3) {
                    c.this.my.yv();
                    return;
                } else if (i10 == 4) {
                    c.this.my.sp();
                    return;
                } else if (i10 != 5) {
                    return;
                }
            }
            if (c.this.my.tt() || c.this.my.ve() || c.this.my.nb()) {
                return;
            }
            c.this.f14070c.tt(0L, false);
        }

        @Override // com.byazt.ouz.sl
        public void tt(int i10) {
            if (kp.n(c.this.tt)) {
                c.this.f14070c.uj(1);
            } else {
                c.this.f14070c.c(i10, false);
            }
        }

        @Override // com.byazt.ouz.sl
        public long c() {
            if (c.this.x(true)) {
                hashCode();
                return ((long) c.this.yv()) * 1000;
            }
            c cVar = c.this;
            cVar.tt(cVar.a(true));
            return c.this.f14073h.c();
        }

        @Override // com.byazt.ouz.sl
        public void c(float f10, float f11, float f12, float f13, int i10) {
            c.this.f14070c.c(f10, f11, f12, f13, i10);
        }

        @Override // com.byazt.ouz.sl
        public void c(float f10) {
            com.byazt.biq.ve veVar = c.this.f14073h;
            if (veVar != null) {
                veVar.ve((int) (1000.0f / f10));
            }
            c.this.f14070c.pu().c(f10);
        }

        @Override // com.byazt.ouz.sl
        public void c(ic icVar) {
            c cVar = c.this;
            if (cVar.gt == null || cVar.f14070c == null) {
                return;
            }
            c cVar2 = c.this;
            com.byazt.hkv.c cVar3 = new com.byazt.hkv.c(cVar2.f14070c, icVar, cVar2.f14078t, 7);
            c.this.gt.c(icVar, cVar3);
            ((com.byazt.vis.c) cVar3.c(com.byazt.vis.c.class)).c(c.this.f14070c.c(icVar));
        }
    };

    public c(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        this.f14070c = tTBaseVideoActivity;
        this.tt = icVar;
        this.ve = icVar.by();
        this.uj = icVar.fr();
    }

    private int dz() {
        long jMax = Math.max(((long) (this.my.p() * 1000.0d)) - this.my.h(), 0L);
        return Math.max((((int) (jMax / 1000)) + (((int) (jMax % 1000)) > 500 ? 1 : 0)) - l(), 0);
    }

    private void j() {
        this.rh.c(false);
        this.f14074i.a(8);
        this.f14074i.n(8);
        this.f14074i.ve(8);
        s();
    }

    public boolean a() {
        return pu.c(this.tt) == 2;
    }

    public int aw() {
        return (int) (this.my.h() / 1000);
    }

    public boolean bm() {
        return !this.yp && this.ve == 1 && kp.gu(this.tt) && this.tt.fr() != 100.0f;
    }

    public int bx() {
        return da(true);
    }

    public void c(int i10) {
    }

    public void cu() {
    }

    public void d() {
        this.f14081z = true;
    }

    public View da() {
        if (this.sl == null) {
            this.sl = new CommonEndCardFrameLayout(this.f14070c, this.tt);
        }
        return this.sl;
    }

    public int eo() {
        return 0;
    }

    public final int gr() {
        return this.sp;
    }

    public float[] gt() {
        TTBaseVideoActivity tTBaseVideoActivity = this.f14070c;
        int iUj = pf.uj(tTBaseVideoActivity, pf.da((Context) tTBaseVideoActivity));
        float f10 = this.f14069a;
        float f11 = this.f14076n;
        int i10 = this.ve;
        if ((i10 == 1) != (f10 > f11)) {
            float f12 = f10 + f11;
            f11 = f12 - f11;
            f10 = f12 - f11;
        }
        if (i10 == 1) {
            f10 -= iUj;
        } else {
            f11 -= iUj;
        }
        return new float[]{f11, f10};
    }

    public void gu() {
    }

    public void h() {
        if (this.zm < 0) {
            this.zm = this.gt.sv();
        }
        int i10 = this.zm;
        if (i10 <= 0) {
            if (i10 == 0) {
                this.f14070c.uj(0);
                this.rh.c(false, "奖励已领取", null, true, true);
                return;
            }
            return;
        }
        this.zm = i10 - 1;
        this.rh.c(false, this.zm + "s", null, true, true);
    }

    public void hd() {
        if (this.nu || Build.VERSION.SDK_INT == 26) {
            return;
        }
        Window window = this.f14070c.getWindow();
        if (window != null) {
            this.f14070c.requestWindowFeature(1);
            window.setBackgroundDrawable(new ColorDrawable(-2013265920));
            window.setStatusBarColor(-16777216);
            window.clearFlags(67108864);
        }
        pf.sp((Activity) this.f14070c);
        this.nu = true;
    }

    public View i() {
        if (this.uj != 100.0f) {
            return kp();
        }
        int iCf = this.tt.cf();
        if (iCf != 1) {
            return iCf != 3 ? com.byazt.vfu.a.c(this.f14070c) : com.byazt.vfu.a.uj(this.f14070c);
        }
        return com.byazt.vfu.a.ve(this.f14070c);
    }

    public int ic() {
        return rl.ve(this.tt) ? rl.n(this.tt) : kp.z(this.tt);
    }

    public View kp() {
        int i10 = (int) (this.uj * 1000.0f);
        if (this.ve == 1) {
            if (i10 == 666) {
                return com.byazt.vfu.a.gr(this.f14070c);
            }
            if (i10 == 1000) {
                return com.byazt.vfu.a.yv(this.f14070c);
            }
            if (i10 != 1500) {
                return i10 != 1777 ? com.byazt.vfu.a.md(this.f14070c) : com.byazt.vfu.a.p(this.f14070c);
            }
            return com.byazt.vfu.a.zm(this.f14070c);
        }
        if (i10 == 562) {
            return com.byazt.vfu.a.eo(this.f14070c);
        }
        if (i10 == 666) {
            return com.byazt.vfu.a.h(this.f14070c);
        }
        if (i10 != 1000) {
            return i10 != 1500 ? com.byazt.vfu.a.zb(this.f14070c) : com.byazt.vfu.a.d(this.f14070c);
        }
        return com.byazt.vfu.a.yv(this.f14070c);
    }

    public int l() {
        return this.f14073h.tt();
    }

    public int lo() {
        return this.f14073h.ve();
    }

    public com.byazt.ouz.sl lr() {
        return this.f14071d;
    }

    public void lt() {
    }

    public void m() {
        AbstractEndCardFrameLayout abstractEndCardFrameLayout = this.sl;
        if (abstractEndCardFrameLayout != null) {
            abstractEndCardFrameLayout.tt();
        }
        com.byazt.dqg.n nVar = this.f14072da;
        if (nVar != null) {
            nVar.uj();
        }
        if (q() || this.gt.cu()) {
            return;
        }
        this.gt.gu();
    }

    public int md() {
        return this.f14073h.a();
    }

    public FrameLayout my() {
        com.byazt.dqg.n nVar;
        if (my.uj(this.tt)) {
            return this.sl.getVideoArea();
        }
        return (a() && (nVar = this.f14072da) != null && nVar.a()) ? this.f14072da.c() : this.f14074i.t();
    }

    public void n() {
        this.f14070c.sp(0);
        this.rh.c(tx());
        float f10 = this.f14076n;
        float f11 = this.f14069a;
        float[] fArrGt = {f10, f11};
        if (f10 < 10.0f || f11 < 10.0f) {
            fArrGt = gt();
        }
        this.f14072da.c(this.tt, md.c(this.f14070c.yv() ? 7 : 8, String.valueOf(nb.t(this.tt)), fArrGt[0], fArrGt[1], this.tt), this.f14078t, this.f14079u, this.f14070c.c());
        this.f14074i.ve(false);
        this.f14072da.ve(true);
        this.f14072da.c(this.f14071d);
        this.f14072da.c(new com.byazt.ouz.c() { // from class: com.byazt.fcd.c.4
            @Override // com.byazt.ouz.c
            public void c(View view, int i10) {
            }

            @Override // com.byazt.ouz.c
            public void tt(View view, int i10) {
            }

            @Override // com.byazt.ouz.c
            public void c(View view, String str, int i10) {
                if (c.this.gt.cu()) {
                    return;
                }
                c.this.gt.tt();
                c.this.f14070c.gt();
                c.this.f14070c.sp(8);
                c.this.rh.c(true);
                com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.fcd.c.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.f14070c.rh();
                    }
                });
            }

            @Override // com.byazt.ouz.c
            public void c(View view, float f12, float f13) {
                if (c.this.gt.cu()) {
                    return;
                }
                c.this.gt.tt();
                c.this.f14070c.gt();
                c.this.f14070c.sp(8);
                c cVar = c.this;
                cVar.sp = cVar.f14072da.i();
                c cVar2 = c.this;
                if (cVar2.sp == 0) {
                    kp.tt(cVar2.tt, true);
                }
                c.this.ve();
            }
        });
        ((com.byazt.vis.c) this.qy.c(com.byazt.vis.c.class)).c(this.f14070c.ic());
        ((com.byazt.vis.c) this.gu.c(com.byazt.vis.c.class)).c(this.f14070c.ic());
        this.f14070c.c((com.byazt.vis.ve) this.qy.c(com.byazt.vis.ve.class));
        this.f14070c.c((com.byazt.vis.ve) this.gu.c(com.byazt.vis.ve.class));
        this.f14072da.c(this.qy, this.gu);
        this.f14072da.x();
    }

    public int nb() {
        return oz() ? yv() : aw() + l();
    }

    public void nu() {
        this.f14074i.m();
        this.rh.tt(this.tt.fe());
        this.rh.n(kk());
        this.f14074i.a(0);
        this.f14074i.n(0);
    }

    public boolean or() {
        return true;
    }

    public int p() {
        return this.f14073h.n();
    }

    public int pf() {
        int i10;
        if (v() && this.gt.bx() && (i10 = this.zm) >= 0) {
            return i10;
        }
        if (oz()) {
            return x(false) ? i(true) : (int) Math.max((ic() * (this.tt.cs() / 100.0f)) - yv(), 0.0f);
        }
        return bx();
    }

    public boolean pu() {
        return this.f14077p;
    }

    public com.byazt.zd.tt qp() {
        return null;
    }

    public void qy() {
    }

    public boolean rh() {
        return false;
    }

    public void rl() {
        com.byazt.dqg.n nVar = this.f14072da;
        if (nVar != null) {
            nVar.c(this.f14073h);
        }
        if (this.yp) {
            this.f14074i.tt((int) (this.my.h() / 1000));
        }
    }

    public View sl() {
        return com.byazt.vfu.a.n(this.f14070c);
    }

    public boolean sp() {
        com.byazt.dqg.n nVar;
        return a() && (nVar = this.f14072da) != null && nVar.a();
    }

    public int sv() {
        int i10 = this.md;
        return i10 == Integer.MIN_VALUE ? a(true) : i10;
    }

    public com.byazt.dqg.n t() {
        com.byazt.dqg.n nVar = new com.byazt.dqg.n(this.f14070c);
        this.f14072da = nVar;
        return nVar;
    }

    public void tk() {
        com.byazt.dqg.n nVar = this.f14072da;
        if (nVar != null) {
            nVar.c(this.f14073h);
        }
        if (v() && this.gt.bx()) {
            h();
        } else {
            r();
        }
    }

    @Override // com.byazt.fcd.tt
    public boolean to() {
        return kp.nu(this.tt) || this.gt.bx();
    }

    public void tt(Map<String, Object> map) {
    }

    public AbstractEndCardFrameLayout u() {
        return this.sl;
    }

    public void uj() {
        boolean zA = this.f14072da.a();
        if (!this.gt.cu() && !zA) {
            nu();
        }
        this.gt.c(this.f14072da.t());
        if (zA) {
            this.f14072da.c().setBackgroundColor(-16777216);
        }
        this.f14074i.ve(!zA);
        this.f14072da.ve(zA);
        this.rh.c(tx() || !zA);
        this.f14070c.a();
    }

    @Override // com.byazt.fcd.tt
    public void ve() {
        uj();
    }

    public void x() {
        boolean z10;
        if (this.yp) {
            z10 = false;
        } else {
            boolean z11 = this instanceof da;
            z10 = true;
            if (kp.gu(this.tt)) {
                z11 = true;
            }
            if (this.uj == 100.0f) {
                z10 = z11;
            }
        }
        if (z10) {
            hd();
        } else {
            this.f14070c.or().setBackgroundColor(-16777216);
        }
        if ((this instanceof da) || this.uj == 100.0f) {
            return;
        }
        try {
            final View decorView = this.f14070c.getWindow().getDecorView();
            decorView.post(new Runnable() { // from class: com.byazt.fcd.c.5
                @Override // java.lang.Runnable
                public void run() {
                    int iDa = (int) (pf.da((Context) c.this.f14070c) / 2.0f);
                    int paddingLeft = decorView.getPaddingLeft();
                    int paddingRight = decorView.getPaddingRight();
                    int paddingTop = decorView.getPaddingTop();
                    int paddingBottom = decorView.getPaddingBottom();
                    if (c.this.ve == 1 && !pf.tt()) {
                        paddingTop += iDa;
                        paddingBottom += iDa;
                    }
                    if (c.this.ve == 2 && !pf.tt()) {
                        paddingLeft += iDa;
                        paddingRight += iDa;
                    }
                    decorView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void yp() {
    }

    public int yv() {
        return this.f14073h.n() + this.f14073h.tt();
    }

    public void z() {
        com.byazt.dqg.n nVar = this.f14072da;
        if (nVar != null) {
            nVar.z();
        }
    }

    public boolean zb() {
        return false;
    }

    public void zm() {
        to();
    }

    public int a(boolean z10) {
        if (v() && this.gt.bx()) {
            return this.zm;
        }
        if (oz()) {
            return x(false) ? i(z10) : Math.max(ic() - yv(), 0);
        }
        return sp(z10);
    }

    public void c(int i10, int i11, Intent intent) {
    }

    public int sp(boolean z10) {
        return z10 ? da(false) : dz();
    }

    public void tt() {
        y();
        if (os()) {
            kp.c(this.tt, true);
        }
        j();
        if (b()) {
            this.gt.tt();
        }
        if (a()) {
            n();
        } else {
            this.f14070c.gt();
            ve();
        }
    }

    public void ve(boolean z10) {
        if (this.tt.fr() != 100.0f) {
            if (gt.tt().da(nb.t(this.tt)) || this.yp) {
                if (com.byazt.yzg.a.ve && com.byazt.yzg.a.tt && c(this.tt)) {
                    com.byazt.yzg.a.tt = false;
                    com.byazt.yzg.a.ve = false;
                    this.f14070c.finish();
                } else if (z10 && !com.byazt.yzg.a.ve) {
                    this.f14070c.finish();
                } else {
                    if (!this.gt.eo() || com.byazt.yzg.a.ve) {
                        return;
                    }
                    this.f14070c.finish();
                }
            }
        }
    }

    public void c(View view) {
    }

    private int da(boolean z10) {
        long jH = this.my.h();
        if (z10) {
            long jMax = Math.max(Math.min(kp.c(), (long) ((this.my.p() * 1000.0d) * ((double) (this.tt.cs() / 100.0f)))) - (jH + (((long) l()) * 1000)), 0L);
            return (int) Math.max(((long) ((int) (jMax / 1000))) + (((int) (jMax % 1000)) > 500 ? 1L : 0L), 0L);
        }
        long jMin = Math.min(kp.c(), (long) (this.my.p() * 1000.0d));
        long jL = ((long) l()) * 1000;
        long jP = (long) ((this.my.p() % 1.0d) * 1000.0d);
        if (jP > 0) {
            jH -= 1000 - jP;
        }
        return Math.round((jMin - (jH + jL)) / 1000.0f);
    }

    public void c(Map<String, Object> map) {
    }

    public void c(JSONObject jSONObject) {
    }

    public void c(com.byazt.kcl.n nVar, com.byazt.kcl.a aVar, com.byazt.kcl.tt ttVar, com.byazt.kcl.uj ujVar, com.byazt.kcl.c cVar) {
        this.rh = nVar;
        this.my = aVar;
        this.gt = ttVar;
        this.rl = ujVar;
        this.gr = cVar;
    }

    private int i(boolean z10) {
        double dMax;
        float fCs = this.tt.cs() / 100.0f;
        if (z10) {
            dMax = Math.max(Math.min(xd.sp(this.tt) * ((double) fCs), kp.c() / 1000) - ((double) yv()), 0.0d);
        } else {
            dMax = Math.max(xd.sp(this.tt) - ((double) yv()), 0.0d);
        }
        return (int) dMax;
    }

    public void uj(boolean z10) {
        float f10 = this.uj;
        if (f10 != 100.0f) {
            int i10 = (int) (f10 * 1000.0f);
            if (this.ve == 1) {
                if (i10 != 666 && i10 != 1000 && i10 != 1500 && i10 != 1777) {
                    this.f14074i.uj(z10 ? 0 : 8);
                    return;
                } else {
                    this.f14074i.uj(8);
                    return;
                }
            }
        } else {
            if (z10) {
                if (this.ve == 1) {
                    this.f14074i.uj(0);
                }
                if (com.byazt.ex.c.c(this.tt)) {
                    this.f14074i.a(0);
                    return;
                }
                return;
            }
            if (this.ve != 1) {
                return;
            }
        }
        this.f14074i.uj(8);
    }

    public void c(String str, boolean z10, boolean z11, com.byazt.biq.ve veVar) {
        this.f14078t = str;
        this.f14079u = z10;
        this.yp = z11;
        this.f14073h = veVar;
    }

    public void tt(boolean z10) {
        com.byazt.dqg.n nVar = this.f14072da;
        if (nVar != null) {
            nVar.n();
        }
    }

    public void ve(int i10) {
        this.f14073h.c(i10);
    }

    public void tt(int i10) {
        this.md = i10;
    }

    public com.byazt.kcl.n c() {
        return this.rh;
    }

    public final void c(com.byazt.hkv.n nVar) {
        this.f14080x = nVar;
        TTBaseVideoActivity tTBaseVideoActivity = this.f14070c;
        ic icVar = this.tt;
        String str = this.f14078t;
        this.qy = new com.byazt.ouz.a(tTBaseVideoActivity, icVar, str, nb.uj(str)) { // from class: com.byazt.fcd.c.2
            @Override // com.byazt.ouz.a, com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, com.byazt.ete.da daVar) {
                if (ic.a(this.f14949c)) {
                    return;
                }
                super.c(view, daVar);
                c.this.f14070c.c(2);
            }
        };
        TTBaseVideoActivity tTBaseVideoActivity2 = this.f14070c;
        ic icVar2 = this.tt;
        String str2 = this.f14078t;
        this.gu = new com.byazt.ouz.n(tTBaseVideoActivity2, icVar2, str2, nb.uj(str2)) { // from class: com.byazt.fcd.c.3
            @Override // com.byazt.ouz.n, com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, com.byazt.ete.da daVar) {
                if (ic.a(this.f14949c)) {
                    return;
                }
                super.c(view, daVar);
                com.byazt.zo.tt ttVar = (com.byazt.zo.tt) this.f14955x.c(com.byazt.zo.tt.class);
                if (ttVar == null || !ttVar.tt(view)) {
                    return;
                }
                c.this.f14070c.c(2);
            }
        };
        this.sl.setClickListener(this.f14080x);
    }

    public com.byazt.dqg.tt c(boolean z10) {
        if (this.uj != 100.0f) {
            this.f14074i = new com.byazt.dqg.sp(this.f14070c, this.tt, z10);
        } else {
            this.f14074i = new com.byazt.dqg.ve(this.f14070c, this.tt, z10);
        }
        return this.f14074i;
    }

    public void n(boolean z10) {
        this.f14079u = z10;
        this.my.ve(z10);
    }

    public void c(int i10, int i11) {
        this.f14076n = i10;
        this.f14069a = i11;
    }

    private boolean c(ic icVar) {
        return (icVar.i() == 4) && !TextUtils.isEmpty(icVar.gr());
    }

    public com.byazt.qq.tt.c c(ic icVar, final com.byazt.qq.da daVar) {
        com.byazt.qq.ve veVar = new com.byazt.qq.ve(this.f14070c, icVar);
        veVar.c(sv());
        veVar.tt(nb());
        veVar.ve(this.f14070c.eo());
        veVar.uj(this.f14070c.zb());
        veVar.ve(this.yv);
        veVar.uj(kp.p(icVar) && !this.f14070c.f16582a.get());
        this.f14070c.sv();
        return veVar.tt(new com.byazt.qq.da() { // from class: com.byazt.fcd.c.6
            @Override // com.byazt.qq.da
            public void c() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.c();
                }
                c.this.f14070c.aw();
            }

            @Override // com.byazt.qq.da
            public void tt() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.tt();
                }
            }

            @Override // com.byazt.qq.da
            public void ve() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.ve();
                }
            }

            @Override // com.byazt.qq.da
            public void c(int i10) {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.c(i10);
                }
            }
        });
    }
}
