package com.byazt.lcf;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.byazt.aas.cu;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.aas.rl;
import com.byazt.biq.ve;
import com.byazt.bzd.t;
import com.byazt.cty.BaseThemeActivity;
import com.byazt.dna.qp;
import com.byazt.dqg.RewardAuthToastLayout;
import com.byazt.dqg.RewardFullBaseLayout;
import com.byazt.ete.da;
import com.byazt.ete.gr;
import com.byazt.ete.h;
import com.byazt.ete.i;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.ete.kp;
import com.byazt.ete.l;
import com.byazt.ete.lt;
import com.byazt.ete.my;
import com.byazt.ete.or;
import com.byazt.ete.p;
import com.byazt.ete.u;
import com.byazt.ete.xd;
import com.byazt.fcd.x;
import com.byazt.ff.TTProgressBar;
import com.byazt.fh.tt;
import com.byazt.go.AbstractEndCardFrameLayout;
import com.byazt.kcl.a;
import com.byazt.kcl.n;
import com.byazt.kcl.uj;
import com.byazt.md.SaasAuthRewardDialog;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.ouz.yv;
import com.byazt.ukr.yp;
import com.byazt.vfu.sp;
import com.byazt.zqa.c;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 38, 39})
public abstract class TTBaseVideoActivity extends BaseThemeActivity implements qp.c, tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f16582a;
    public ve aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.byazt.xjc.c f16583b;
    public String bm;
    public com.byazt.fcd.c bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16584c;
    public a cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AbstractEndCardFrameLayout f16585d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final AtomicBoolean f16586da;
    public int dz;
    public n eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.byazt.qq.tt.c f16587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f16588g;
    public long gr;
    public final AtomicBoolean gt;
    public boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.byazt.dqg.n f16589h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public String f16590hd;
    public long hj;
    public com.byazt.bzd.c hq;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f16591i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int f16592ic;
    public long ir;
    public float iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16593j;
    public final AtomicBoolean kk;
    public com.byazt.sy.c kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f16594l;
    public com.byazt.hkv.n lo;
    public com.byazt.dyf.tt lr;
    public com.byazt.wg.tt lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AtomicBoolean f16595m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public int f16596ma;
    public com.byazt.dqg.tt md;
    public final AtomicBoolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, Boolean> f16597n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public uj f16598nb;
    public AtomicBoolean nt;
    public final AtomicBoolean nu;
    public final com.byazt.ua.c.InterfaceC0445c ny;
    public com.byazt.kcl.c or;
    public long os;
    public long oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public RewardFullBaseLayout f16599p;
    public com.byazt.kcl.ve pf;
    public com.byazt.sy.n pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final com.byazt.cjm.c f16600q;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public com.byazt.hkv.tt f16601r;
    public final AtomicBoolean rh;
    public boolean rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public com.byazt.kcl.c.tt f16602s;
    public final AtomicBoolean sl;
    public final AtomicBoolean sp;
    public TTBaseVideoActivity sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AtomicBoolean f16603t;
    public com.byazt.zd.c.InterfaceC0501c tk;
    public com.byazt.rob.c to;
    public final d tt;
    public boolean tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AtomicBoolean f16604u;
    public final ConcurrentHashMap<Integer, Boolean> uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f16605v;
    public final AtomicBoolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AtomicBoolean f16606x;
    public com.byazt.biq.uj xd;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public com.byazt.kcl.c.InterfaceC0356c f16607y;
    public Double yf;
    public final AtomicBoolean yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final AtomicBoolean f16608z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public com.byazt.kcl.tt f16609zb;
    public boolean zm;

    public TTBaseVideoActivity() {
        this.f16584c = yv() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.tt = new d(Looper.getMainLooper(), this);
        this.ve = new AtomicBoolean(false);
        this.uj = new ConcurrentHashMap<>();
        this.f16597n = new ConcurrentHashMap<>();
        this.f16582a = new AtomicBoolean(false);
        this.sp = new AtomicBoolean(false);
        this.f16606x = new AtomicBoolean(false);
        this.kk = new AtomicBoolean(false);
        this.f16591i = new AtomicBoolean(false);
        this.f16586da = new AtomicBoolean(false);
        this.sl = new AtomicBoolean(false);
        this.f16603t = new AtomicBoolean(false);
        this.f16604u = new AtomicBoolean(false);
        this.yp = new AtomicBoolean(false);
        this.f16608z = new AtomicBoolean(false);
        this.f16595m = new AtomicBoolean(false);
        this.nu = new AtomicBoolean(false);
        this.rh = new AtomicBoolean(false);
        this.my = new AtomicBoolean(false);
        this.gt = new AtomicBoolean(false);
        this.yv = -1;
        this.os = 0L;
        this.oz = 0L;
        this.f16593j = 1;
        this.yf = null;
        this.ir = 0L;
        this.f16588g = false;
        this.tk = new com.byazt.zd.c.InterfaceC0501c() { // from class: com.byazt.lcf.TTBaseVideoActivity.1
            @Override // com.byazt.zd.c.InterfaceC0501c
            public void c() {
                TTBaseVideoActivity.this.tt.removeMessages(300);
                TTBaseVideoActivity.this.m();
                if (!TTBaseVideoActivity.this.cu.t()) {
                    a aVar = TTBaseVideoActivity.this.cu;
                    aVar.tt(aVar.h() + 1000);
                }
                if (TTBaseVideoActivity.this.bx.a() && !TTBaseVideoActivity.this.cu.t()) {
                    TTBaseVideoActivity.this.f16589h.tt(true);
                }
                TTBaseVideoActivity.this.kk();
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void tt() {
                TTBaseVideoActivity.this.tt.removeMessages(300);
                TTBaseVideoActivity.this.m();
                TTBaseVideoActivity.this.c(false, false);
                TTBaseVideoActivity.this.cu.c(6);
                TTBaseVideoActivity.this.cu.i();
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void ve() {
                com.byazt.sy.n nVar = TTBaseVideoActivity.this.pu;
                if (nVar == null || nVar.c() == null) {
                    return;
                }
                TTBaseVideoActivity.this.pu.c().c();
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void c(int i10, String str) {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                if (tTBaseVideoActivity.qy) {
                    tTBaseVideoActivity.tt.removeMessages(300);
                    TTBaseVideoActivity.this.u();
                    TTBaseVideoActivity.this.cu.c(5);
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    tTBaseVideoActivity2.tt(tTBaseVideoActivity2.cu.tt());
                }
            }

            @Override // com.byazt.zd.c.InterfaceC0501c
            public void c(long j10, long j11) {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                if (!tTBaseVideoActivity.qy && tTBaseVideoActivity.cu.tt()) {
                    TTBaseVideoActivity.this.cu.c((Map<String, Object>) null);
                }
                boolean z10 = true;
                if (TTBaseVideoActivity.this.f16609zb.cu()) {
                    TTBaseVideoActivity.this.cu.ve(true);
                    return;
                }
                TTBaseVideoActivity.this.tt.removeMessages(300);
                if (j10 != TTBaseVideoActivity.this.cu.h()) {
                    TTBaseVideoActivity.this.m();
                }
                if (TTBaseVideoActivity.this.cu.tt() || j11 == j10) {
                    TTBaseVideoActivity.this.cu.tt(j10);
                    if (TTBaseVideoActivity.this.hq()) {
                        TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                        com.byazt.dqg.n nVar = tTBaseVideoActivity2.f16589h;
                        String strValueOf = String.valueOf(tTBaseVideoActivity2.cu.md());
                        int iH = (int) (TTBaseVideoActivity.this.cu.h() / 1000);
                        if (j10 != j11 && !TTBaseVideoActivity.this.cu.eo()) {
                            z10 = false;
                        }
                        nVar.c(strValueOf, iH, 0, z10);
                    }
                    TTBaseVideoActivity.this.ve(0);
                    TTBaseVideoActivity.this.bm();
                    TTBaseVideoActivity.this.bx.rl();
                }
            }
        };
        this.kp = new com.byazt.sy.c() { // from class: com.byazt.lcf.TTBaseVideoActivity.12
            @Override // com.byazt.sy.c
            public void c(ViewGroup viewGroup) {
            }

            @Override // com.byazt.ouz.sl
            public void n() {
                TTBaseVideoActivity.this.bx.lr().n();
            }

            @Override // com.byazt.ouz.sl
            public void setPauseFromExpressView(boolean z10) {
                TTBaseVideoActivity.this.bx.lr().setPauseFromExpressView(z10);
            }

            @Override // com.byazt.ouz.sl
            public int tt() {
                return TTBaseVideoActivity.this.bx.lr().tt();
            }

            @Override // com.byazt.ouz.sl
            public void uj() {
                TTBaseVideoActivity.this.bx.lr().uj();
            }

            @Override // com.byazt.ouz.sl
            public int ve() {
                return TTBaseVideoActivity.this.bx.lr().ve();
            }

            @Override // com.byazt.ouz.sl
            public void c(int i10) {
                TTBaseVideoActivity.this.bx.lr().c(i10);
            }

            @Override // com.byazt.ouz.sl
            public void tt(int i10) {
                TTBaseVideoActivity.this.bx.lr().tt(i10);
            }

            @Override // com.byazt.ouz.sl
            public void uj(int i10) {
                TTBaseVideoActivity.this.ve(i10);
            }

            @Override // com.byazt.ouz.sl
            public void ve(int i10) {
                TTBaseVideoActivity.this.bx.lr().ve(i10);
            }

            @Override // com.byazt.ouz.sl
            public long c() {
                return TTBaseVideoActivity.this.bx.lr().c();
            }

            @Override // com.byazt.ouz.sl
            public void c(int i10, String str) {
                TTBaseVideoActivity.this.bx.lr().c(i10, str);
            }

            @Override // com.byazt.ouz.sl
            public void c(float f10) {
                TTBaseVideoActivity.this.bx.lr().c(f10);
            }

            @Override // com.byazt.sy.c
            public void c(View view) {
                TTBaseVideoActivity.this.c(2);
                com.byazt.sy.ve.tt(TTBaseVideoActivity.this.qp, p.sp(TTBaseVideoActivity.this.qp), true, null);
            }

            @Override // com.byazt.ouz.sl
            public void c(ic icVar) {
                TTBaseVideoActivity.this.bx.lr().c(icVar);
            }

            @Override // com.byazt.sy.c
            public void c(View view, int i10, com.byazt.sr.ve veVar, ir irVar) {
                boolean zOptBoolean;
                da daVar;
                if (TTBaseVideoActivity.this.lo != null) {
                    if (veVar instanceof gr) {
                        gr grVar = (gr) veVar;
                        daVar = new da();
                        daVar.c(grVar.f13648c);
                        daVar.tt(grVar.tt);
                        daVar.ve(grVar.ve);
                        daVar.uj(grVar.uj);
                        daVar.c(grVar.f13652n);
                        daVar.tt(grVar.f13647a);
                        daVar.tt(grVar.f13656z);
                        zOptBoolean = grVar.c().optBoolean("isLottieInternalClick", false);
                    } else {
                        daVar = null;
                        zOptBoolean = false;
                    }
                    TTBaseVideoActivity.this.lo.c(view, daVar);
                } else {
                    zOptBoolean = false;
                }
                com.byazt.sy.ve.c(TTBaseVideoActivity.this.qp, (u) irVar, false, (JSONObject) null, zOptBoolean);
            }

            @Override // com.byazt.sy.c
            public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
                da daVar;
                if ((i10 == 1 || i10 == 2) && (veVar instanceof gr)) {
                    gr grVar = (gr) veVar;
                    daVar = new da();
                    daVar.c(grVar.f13648c);
                    daVar.tt(grVar.tt);
                    daVar.ve(grVar.ve);
                    daVar.uj(grVar.uj);
                    daVar.c(grVar.f13652n);
                    daVar.tt(grVar.f13647a);
                    daVar.tt(grVar.f13656z);
                } else {
                    daVar = null;
                }
                if (i10 == 2) {
                    TTBaseVideoActivity.this.lo.c(view, daVar);
                }
                if (i10 == 1) {
                    TTBaseVideoActivity.this.lo.c(view, daVar);
                }
            }
        };
        this.ny = new com.byazt.ua.c.InterfaceC0445c() { // from class: com.byazt.lcf.TTBaseVideoActivity.16
            @Override // com.byazt.ua.c.InterfaceC0445c
            public boolean getHasUseCustomizeVideo() {
                return false;
            }

            @Override // com.byazt.ua.c.InterfaceC0445c
            public com.byazt.ua.c getVideoModel() {
                com.byazt.ua.c cVar = new com.byazt.ua.c();
                a aVar = TTBaseVideoActivity.this.cu;
                if (aVar != null) {
                    cVar.sp = aVar.m();
                    cVar.f20527c = TTBaseVideoActivity.this.cu.c();
                    cVar.f20529x = TTBaseVideoActivity.this.rl;
                }
                return cVar;
            }
        };
        this.f16583b = new com.byazt.xjc.tt(new com.byazt.xjc.c.InterfaceC0483c() { // from class: com.byazt.lcf.TTBaseVideoActivity.17
            @Override // com.byazt.xjc.c.InterfaceC0483c
            public int a() {
                return TTBaseVideoActivity.this.bx.a(true);
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public RewardFullBaseLayout c() {
                return TTBaseVideoActivity.this.f16599p;
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public void da() {
                com.byazt.fcd.c cVar = TTBaseVideoActivity.this.bx;
                if (cVar instanceof com.byazt.fcd.da) {
                    ((com.byazt.fcd.da) cVar).j();
                }
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public TTBaseVideoActivity getActivity() {
                return TTBaseVideoActivity.this.sv;
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public boolean i() {
                return TTBaseVideoActivity.this.bx.pu();
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public int n() {
                return TTBaseVideoActivity.this.bx.md();
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public void sl() {
                com.byazt.fcd.c cVar = TTBaseVideoActivity.this.bx;
                if (cVar instanceof com.byazt.fcd.da) {
                    ((com.byazt.fcd.da) cVar).dz();
                }
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public boolean sp() {
                return TTBaseVideoActivity.this.my.get();
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public boolean tt() {
                return TTBaseVideoActivity.this.yv();
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public boolean uj() {
                return TTBaseVideoActivity.this.tx;
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public ic ve() {
                return TTBaseVideoActivity.this.qp;
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public boolean x() {
                return TTBaseVideoActivity.this.tk();
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public void c(int i10, int i11) {
                if (i10 == 3) {
                    TTBaseVideoActivity.this.yp(2);
                }
                TTBaseVideoActivity.this.c(i10, i11);
            }

            @Override // com.byazt.xjc.c.InterfaceC0483c
            public void c(int i10) {
                if (i10 == 3) {
                    TTBaseVideoActivity.this.z(2);
                }
            }
        });
        this.f16600q = new com.byazt.cjm.tt(new com.byazt.cjm.c.InterfaceC0283c() { // from class: com.byazt.lcf.TTBaseVideoActivity.18
            @Override // com.byazt.cjm.c.InterfaceC0283c
            public ic c() {
                return TTBaseVideoActivity.this.qp;
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public Activity getActivity() {
                return TTBaseVideoActivity.this.sv;
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public void n() {
                a aVar = TTBaseVideoActivity.this.cu;
                if (aVar != null) {
                    aVar.sp();
                }
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public String tt() {
                return TTBaseVideoActivity.this.f16590hd;
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public void uj() {
                TTBaseVideoActivity.this.sv();
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public void ve() {
                TTBaseVideoActivity.this.finish();
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public void c(int i10, TTProgressBar tTProgressBar) {
                try {
                    TTBaseVideoActivity.this.f16599p.c(i10, tTProgressBar);
                } catch (Exception unused) {
                }
            }

            @Override // com.byazt.cjm.c.InterfaceC0283c
            public void c(boolean z10, String str, String str2) {
                if (rl.ve(TTBaseVideoActivity.this.qp)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("visible", z10);
                    jSONObject.put("entrance_text", l.c(TTBaseVideoActivity.this.qp, str, str2));
                } catch (JSONException e10) {
                    m.c(e10);
                }
                TTBaseVideoActivity.this.f16589h.c("showPlayAgainEntrance", jSONObject);
                TTBaseVideoActivity.this.f16609zb.c(jSONObject);
                if (TTBaseVideoActivity.this.f16609zb.cu()) {
                    return;
                }
                TTBaseVideoActivity.this.eo.sp(z10);
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.eo.c(l.c(tTBaseVideoActivity.qp, str, str2));
            }
        });
        this.nt = new AtomicBoolean(true);
    }

    private boolean dz() {
        com.byazt.fcd.c cVar = this.bx;
        if (cVar instanceof com.byazt.fcd.da) {
            return true;
        }
        return cVar instanceof com.byazt.fcd.ve;
    }

    private void f() {
        if (this.f16609zb.cu() || !this.qy || kp() || !this.bx.kk() || this.cu.nb()) {
            return;
        }
        com.byazt.fcd.c cVar = this.bx;
        if ((cVar instanceof com.byazt.fcd.ve) || (cVar instanceof com.byazt.fcd.da)) {
            return;
        }
        this.tt.removeMessages(300);
        this.tt.sendEmptyMessageDelayed(300, 5000L);
    }

    private boolean g() {
        com.byazt.qq.tt.c cVar = this.f16587f;
        return cVar != null && cVar.uj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hj() {
        if (zm()) {
            f();
            this.cu.c(false, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hq() {
        return (this.qp.id() == 180 && kp.nu(this.qp) && t.c(this.qp) && this.f16589h.i() == 7) ? false : true;
    }

    private void ir() {
        final View decorView;
        try {
            decorView = getWindow().getDecorView();
        } catch (Throwable unused) {
            decorView = null;
        }
        if (decorView == null) {
            return;
        }
        decorView.post(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    decorView.findViewById(R.id.statusBarBackground).setVisibility(8);
                } catch (Exception unused2) {
                }
            }
        });
        decorView.postDelayed(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    decorView.findViewById(R.id.statusBarBackground).setVisibility(8);
                } catch (Exception unused2) {
                }
            }
        }, 300L);
    }

    private void iu() {
        ic icVar = this.qp;
        if (icVar == null || this.f16599p == null) {
            return;
        }
        String strM = icVar.m();
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        try {
            int iOptInt = new JSONObject(strM).optInt("auth_reward_gold");
            if (iOptInt > 0) {
                this.f16599p.addView(new RewardAuthToastLayout(this.sv, iOptInt));
            }
        } catch (JSONException e10) {
            m.tt("TTBaseVideoActivity", e10);
        }
    }

    private void j() {
        com.byazt.ddx.uj.c(this.qp, getClass().getName());
        this.f16592ic = nb.t(this.qp);
        this.iu = this.qp.fr();
        this.f16593j = this.qp.by();
        kp.c(this.qp, false);
        kp.tt(this.qp, false);
        com.byazt.fh.a.ve = false;
        com.byazt.fh.a.tt = 0;
        com.byazt.fh.a.f14179c = 0;
        com.byazt.fh.a.uj = false;
    }

    private void ma() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.fcd.c cVar = this.bx;
            if (cVar != null) {
                jSONObject.put("reward_full_scene_type", cVar.eo());
            }
        } catch (Exception unused) {
        }
        yp.c().c(this.qp, "stats_reward_full_destroy", jSONObject);
        com.byazt.fh.a.ve = false;
        com.byazt.fh.a.tt = 0;
        com.byazt.fh.a.f14179c = 0;
        com.byazt.fh.a.uj = false;
        this.tt.removeCallbacksAndMessages(null);
        this.cu.gr();
        this.or.a();
        this.f16609zb.sp();
        com.byazt.sy.n nVar = this.pu;
        if (nVar != null) {
            nVar.tt();
        }
        ve(true);
        p();
        c("recycleRes", (Bundle) null);
        ic icVar = this.qp;
        if (icVar != null) {
            com.byazt.nl.c.c(icVar.rl());
            com.byazt.omf.rl.c(this.qp.rl());
            com.byazt.omf.rl.c(this.qp.lw());
            cu.tt(this.qp.eo());
        }
    }

    private boolean r() {
        if (this.qp != null && com.byazt.apd.tt.c().tt(this.qp)) {
            String strM = this.qp.m();
            if (TextUtils.isEmpty(strM)) {
                return false;
            }
            try {
                return new JSONObject(strM).optInt("saas_play_time_type") == 1;
            } catch (JSONException e10) {
                m.tt("TTBaseVideoActivity", e10);
            }
        }
        return false;
    }

    private void s() {
        this.f16599p = new RewardFullBaseLayout(this.sv);
        this.eo = new n(this.sv);
        this.f16609zb = new com.byazt.kcl.tt(this.sv);
        this.or = new com.byazt.kcl.c(this.sv);
        this.cu = new a(this.sv);
        this.f16598nb = new uj(this.sv);
        this.pf = new com.byazt.kcl.ve(this.sv);
    }

    private void xd() {
        if (my.uj(this.qp)) {
            this.cu.pf();
            return;
        }
        t();
        if (kp.nu(this.qp) || this.bx.x(false)) {
            lr();
        } else {
            ve(0);
            this.eo.c(false, null, null, true, true);
        }
        if (kp.sp(this.qp) && this.cu.gt() >= kp.da(this.qp)) {
            ve(2);
        }
        this.bx.cu();
    }

    private void y() {
        com.byazt.fcd.c cVarC = com.byazt.fcd.uj.c(this.sv, this.qp);
        this.bx = cVarC;
        if (cVarC == null) {
            m.uj("TTBaseVideoActivity", "initAdType failed , finish activity");
            finish();
            return;
        }
        cVarC.getClass();
        if (!or.tt(yv(), this.qp, true)) {
            this.rl = this.qp.ab() == 1;
        }
        this.bx.c(this.eo, this.cu, this.f16609zb, this.f16598nb, this.or);
        ve veVar = new ve(yv(), this.qp, this.cu, this.bx);
        this.aw = veVar;
        veVar.tt(this.f16605v);
        this.bx.c(this.f16584c, this.rl, yv(), this.aw);
        this.bx.x();
    }

    private void yf() {
        final View decorView;
        ic icVar = this.qp;
        if (icVar == null || !icVar.d()) {
            final int iUl = gt.tt().ul();
            try {
                requestWindowFeature(1);
                getWindow().addFlags(16777216);
                getWindow().addFlags(128);
                gt.c(this.sv);
                if (!this.bx.bm()) {
                    getWindow().addFlags(1024);
                    if (iUl == 1) {
                        if (Build.VERSION.SDK_INT >= 30) {
                            getWindow().setDecorFitsSystemWindows(true);
                        }
                        getWindow().getDecorView().setFitsSystemWindows(true);
                    }
                }
            } catch (Throwable unused) {
            }
            if (iUl == 1) {
                return;
            }
            try {
                decorView = getWindow().getDecorView();
            } catch (Throwable unused2) {
                decorView = null;
            }
            if (decorView == null) {
                return;
            }
            decorView.post(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (pf.tt() && TTBaseVideoActivity.this.f16593j == 1 && TTBaseVideoActivity.this.sv.getResources().getConfiguration().orientation == 1) {
                            int height = TTBaseVideoActivity.this.getWindow().getDecorView().getHeight();
                            if (iUl == 1) {
                                Rect rect = new Rect();
                                TTBaseVideoActivity.this.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                                height = rect.bottom - rect.top;
                            }
                            if (Math.abs(pf.x((Context) TTBaseVideoActivity.this.sv) - height) == 0 && decorView.isAttachedToWindow()) {
                                View view = decorView;
                                view.setPadding(view.getPaddingLeft(), (int) (decorView.getPaddingTop() + pf.da((Context) TTBaseVideoActivity.this.sv)), decorView.getPaddingRight(), decorView.getPaddingBottom());
                            }
                        }
                    } catch (Throwable unused3) {
                    }
                }
            });
        }
    }

    public void aw() {
        z(0);
    }

    public void b() {
        this.eo.a();
    }

    public void bm() {
    }

    public void bx() {
        this.tt.removeMessages(600);
    }

    public String c() {
        return null;
    }

    public abstract void c(String str, Bundle bundle);

    public void cu() {
        boolean z10 = !this.rl;
        this.rl = z10;
        this.bx.n(z10);
    }

    public String d() {
        return "";
    }

    public String eo() {
        return "";
    }

    @Override // com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void finish() {
        com.byazt.fcd.c cVar = this.bx;
        if (cVar != null) {
            cVar.z();
        }
        Map<String, Object> mapIc = ic();
        com.byazt.kcl.tt ttVar = this.f16609zb;
        if (ttVar != null) {
            ttVar.c(mapIc);
            this.f16609zb.n();
        }
        com.byazt.fcd.c cVar2 = this.bx;
        if (cVar2 != null) {
            cVar2.tt(mapIc);
        }
        com.byazt.ddx.uj.a(this.qp, this.f16584c, "click_close", mapIc);
        p();
        super.finish();
    }

    public int h() {
        return 0;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        int i10 = message.what;
        if (i10 == 300) {
            sl();
            return;
        }
        if (i10 == 400) {
            this.cu.i();
            if (this.bx.a()) {
                this.f16589h.c(true);
            }
            c(false, true);
            return;
        }
        if (i10 == 500) {
            this.f16609zb.x();
            this.cu.x();
            this.md.ve(false);
            this.f16589h.ve(false);
            this.f16589h.uj();
            return;
        }
        if (i10 == 600) {
            this.eo.c(false, null, null, true, true);
            return;
        }
        if (i10 == 700) {
            this.f16609zb.zb();
            return;
        }
        if (i10 == 1200) {
            if (kp.nu(this.qp)) {
                return;
            }
            if (this.f16609zb.d()) {
                c(1, false);
                this.f16598nb.c(pf(), this.bx.pf());
                ve(0);
            }
            this.tt.sendEmptyMessageDelayed(1200, 1000L);
            return;
        }
        if (i10 != 1300) {
            return;
        }
        this.tt.sendEmptyMessageDelayed(1300, this.aw.i());
        if (gr()) {
            return;
        }
        this.aw.x();
        if (!kp()) {
            this.aw.sp();
            if (to().x(true)) {
                this.cu.tt(((long) this.aw.n()) * 1000);
                this.f16589h.c(String.valueOf(Math.max(0, (int) (this.cu.p() - ((double) this.aw.n())))), this.aw.n(), 0, false);
            }
        }
        com.byazt.xjc.uj ujVar = new com.byazt.xjc.uj();
        if (or.tt(yv()) > 0) {
            int iN = or.n(this.qp) / 1000;
            int iTt = or.tt(yv());
            if (iN < iTt) {
                iTt = iN;
            }
            if (iN - iTt <= this.bx.md()) {
                ujVar.f21920c = true;
                ujVar.tt = iTt;
            }
        }
        c(2, ujVar);
        com.byazt.xjc.uj ujVar2 = new com.byazt.xjc.uj();
        ujVar2.f21920c = true;
        c(3, ujVar2);
        this.f16583b.sp();
        this.bx.tk();
    }

    public Double hd() {
        return this.yf;
    }

    public Map<String, Object> ic() {
        return c(this.qp);
    }

    public void kk() {
        if (!this.cu.eo() && !this.cu.t()) {
            xd();
        }
        a(1);
    }

    public boolean kp() {
        com.byazt.fcd.c cVar = this.bx;
        return (cVar != null && cVar.iu()) || !this.f16597n.isEmpty();
    }

    public void l() {
        if (this.f16603t.getAndSet(true)) {
            return;
        }
        a(3);
    }

    public boolean lo() {
        return this.f16598nb.uj() || this.f16609zb.cu() || !kp.ve(this.qp, this.bx.sp());
    }

    public void lr() {
        if (this.sl.getAndSet(true)) {
            return;
        }
        a(1);
    }

    public com.byazt.kcl.ve lt() {
        return this.pf;
    }

    public boolean md() {
        return false;
    }

    public d nb() {
        return this.tt;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        pf.tt((Activity) this.sv);
        try {
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.byazt.lcf.TTBaseVideoActivity.8
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i10) {
                    if (i10 == 0) {
                        com.byazt.wg.tt ttVar = TTBaseVideoActivity.this.lt;
                        if (ttVar != null) {
                            ttVar.c();
                        }
                        try {
                            if (TTBaseVideoActivity.this.isFinishing()) {
                                return;
                            }
                            if (TTBaseVideoActivity.this.f16593j == 2) {
                                TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.8.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        pf.c((Activity) TTBaseVideoActivity.this.sv);
                                    }
                                }, 2500L);
                            } else {
                                TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.8.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        pf.tt((Activity) TTBaseVideoActivity.this.sv);
                                    }
                                }, 500L);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        ic icVar = this.qp;
        if (icVar == null) {
            return;
        }
        if (ic.uj(icVar) || this.qp.ka() == 1 || (this.bx instanceof x)) {
            this.f16609zb.m();
        }
        com.byazt.wg.tt ttVar = this.lt;
        if ((ttVar == null || !ttVar.tt(this.sv, this.qp)) && my.u(this.qp)) {
            da();
        }
    }

    @Override // com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        sp.tt(this);
        super.onCreate(bundle);
        this.sv = this;
        s();
        c(getIntent());
        tt(bundle);
        tt(getIntent());
        if (c(bundle)) {
            j();
            y();
            yf();
            i();
            this.bx.c(this.dz, this.f16596ma);
            setContentView(this.f16599p);
            uj();
            this.bx.tt();
            com.byazt.dqg.n nVar = this.f16589h;
            if (nVar != null) {
                nVar.c(this.ny);
            }
            if (r()) {
                this.xd = new com.byazt.biq.uj();
            }
            SaasAuthRewardDialog saasAuthRewardDialog = (SaasAuthRewardDialog) findViewById(2114387968);
            if (saasAuthRewardDialog != null) {
                saasAuthRewardDialog.c(this.qp, this.f16584c, yv() ? 7 : 5);
            }
            if (or.tt(yv(), this.qp, true)) {
                or().getSceneFrameContainer().post(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.19
                    @Override // java.lang.Runnable
                    public void run() {
                        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, TTBaseVideoActivity.this.or().getSceneFrameContainer().getHeight(), 0.0f);
                        translateAnimation.setDuration(300L);
                        translateAnimation.setFillAfter(true);
                        TTBaseVideoActivity.this.or().getSceneFrameContainer().startAnimation(translateAnimation);
                    }
                });
            }
        }
    }

    @Override // com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.byazt.fcd.c cVar = this.bx;
        if (cVar != null) {
            cVar.m();
        }
        if (!dz()) {
            this.pf.n().c(16);
        }
        com.byazt.dyf.tt ttVar = this.lr;
        if (ttVar != null) {
            ttVar.resetDislikeStatus();
        }
        ma();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        com.byazt.wg.tt ttVar = this.lt;
        if (ttVar != null) {
            ttVar.c(i10);
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.os > 0) {
            this.oz += System.currentTimeMillis() - this.os;
            this.os = 0L;
        }
        com.byazt.rob.c cVar = this.to;
        if (cVar != null && cVar.ve()) {
            Bundle bundle = new Bundle();
            bundle.putLong("foreground_time", this.oz);
            com.byazt.rob.tt.c().c(this.f16592ic, bundle);
        }
        sv();
        this.qy = false;
        com.byazt.fcd.c cVar2 = this.bx;
        if (cVar2 != null) {
            cVar2.yp();
        }
        this.or.n();
        this.f16609zb.n();
        com.byazt.biq.uj ujVar = this.xd;
        if (ujVar != null) {
            ujVar.c();
        }
        this.tt.removeMessages(1300);
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (yv() && this.f16600q.tt()) {
            tt();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        Bundle bundleC;
        super.onResume();
        this.os = System.currentTimeMillis();
        if (this.f16583b.n()) {
            tt();
            return;
        }
        com.byazt.rob.c cVar = this.to;
        if (cVar != null && cVar.uj() && (bundleC = com.byazt.rob.tt.c().c(this.f16592ic)) != null) {
            c(Math.round((bundleC.getLong("foreground_time", 0L) / 1000) * kp.yv(this.qp)), true);
            com.byazt.rob.tt.c().tt(this.f16592ic);
            this.to.tt(false);
        }
        com.byazt.biq.uj ujVar = this.xd;
        if (ujVar != null) {
            ujVar.tt();
            int iC = (int) this.xd.c(TimeUnit.SECONDS);
            c(iC, false);
            this.xd.ve();
            if (this.f16589h != null && !kp.nu(this.qp)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("time", iC);
                } catch (JSONException e10) {
                    m.c(e10);
                }
                this.f16589h.c("reduceTime", jSONObject);
            }
        }
        this.qy = true;
        this.f16609zb.ve();
        this.or.uj();
        com.byazt.fcd.c cVar2 = this.bx;
        if (cVar2 != null) {
            cVar2.tt(this.uj.containsKey(0));
            aw();
            this.f16598nb.c();
            ir();
        }
        com.byazt.xjc.uj ujVar2 = new com.byazt.xjc.uj();
        ujVar2.f21920c = or.c(yv()) > 0;
        ujVar2.tt = or.c(yv());
        c(1, ujVar2);
        this.tt.sendEmptyMessageDelayed(1300, this.aw.i());
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putString("multi_process_key", this.f16590hd);
            bundle.putBoolean("is_preload", this.gu);
            bundle.putLong("object_create_ts", this.gr);
            bundle.putBoolean("is_adm", this.zm);
            bundle.putInt("key_video_cache_callback", this.yv);
            bundle.putLong("video_current", this.cu.m());
            bundle.putBoolean("is_mute", this.rl);
            bundle.putString("rit_scene", this.bm);
            Double d10 = this.yf;
            bundle.putString("_client_bidding_aution_price", d10 == null ? "" : String.valueOf(d10));
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    public void onSkipBorderClick(View view) {
        this.bx.c(view);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f16609zb.u();
        com.byazt.bzd.c cVar = this.hq;
        if (cVar != null) {
            cVar.c();
        }
        com.byazt.qqc.ve.c().c(this, this.qp, this.rl);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        com.byazt.fcd.c cVar = this.bx;
        if (cVar != null) {
            cVar.ve(this.f16582a.get());
        }
        this.f16609zb.a();
        com.byazt.bzd.c cVar2 = this.hq;
        if (cVar2 != null) {
            cVar2.tt();
        }
        com.byazt.qqc.ve.c().tt((Context) this, this.qp, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (dz()) {
            return;
        }
        this.pf.n().c(1.0f, z10 ? 12 : 13);
    }

    public RewardFullBaseLayout or() {
        return this.f16599p;
    }

    public void os() {
        this.f16583b.c(this.f16599p);
    }

    public boolean oz() {
        return this.f16586da.get();
    }

    public abstract void p();

    public int pf() {
        return Math.max(this.bx.lo() - (((int) (this.cu.h() / 1000)) + this.bx.l()), 0);
    }

    public a pu() {
        return this.cu;
    }

    public void q() {
        this.my.set(true);
    }

    public void qp() {
        this.f16598nb.tt();
    }

    public void sv() {
        yp(0);
    }

    public boolean tk() {
        return this.uj.containsKey(0);
    }

    public com.byazt.fcd.c to() {
        return this.bx;
    }

    public void tx() {
        this.f16583b.tt(false);
    }

    public void uj(int i10) {
    }

    public void v() {
        this.bx.lt();
    }

    public void ve(int i10) {
    }

    public abstract void ve(boolean z10);

    public void x(int i10) {
    }

    public abstract boolean yv();

    public String zb() {
        return "";
    }

    public void a() {
        if (this.bx.kk()) {
            if (tt(this.cu.a(), false)) {
                return;
            }
            c(true, true);
        } else {
            if (rl.sp(this.qp)) {
                return;
            }
            tt(true, true);
        }
    }

    public void da() {
        if (this.f16609zb.z()) {
            this.f16609zb.m();
            return;
        }
        if (!this.f16609zb.yv() && !com.byazt.xs.da.n(this.qp) && !com.byazt.xs.da.uj(this.qp)) {
            tt();
            return;
        }
        com.byazt.qq.da daVar = new com.byazt.qq.da() { // from class: com.byazt.lcf.TTBaseVideoActivity.4
            @Override // com.byazt.qq.da
            public void c() {
                if (my.u(TTBaseVideoActivity.this.qp)) {
                    new com.byazt.ddx.c.C0288c().n(TTBaseVideoActivity.this.qp.uj()).c("rewarded_video").tt("popup_play").uj(TTBaseVideoActivity.this.qp.w_()).c((com.byazt.ya.c) null);
                    if (com.byazt.xs.da.n(TTBaseVideoActivity.this.qp) || com.byazt.xs.da.uj(TTBaseVideoActivity.this.qp)) {
                        return;
                    }
                    TTBaseVideoActivity.this.tt("onClickModalCallback");
                }
            }

            @Override // com.byazt.qq.da
            public void tt() {
                if (my.u(TTBaseVideoActivity.this.qp)) {
                    new com.byazt.ddx.c.C0288c().n(TTBaseVideoActivity.this.qp.uj()).c("rewarded_video").tt("popup_cancel").uj(TTBaseVideoActivity.this.qp.w_()).c((com.byazt.ya.c) null);
                    TTBaseVideoActivity.this.yp();
                    TTBaseVideoActivity.this.tt();
                }
            }
        };
        if (com.byazt.xs.da.n(this.qp) || com.byazt.xs.da.uj(this.qp)) {
            c(daVar);
        } else {
            tt(daVar);
        }
    }

    public boolean gr() {
        return g() || rl() || this.bx.zb() || this.f16588g;
    }

    public void gt() {
        com.byazt.dqg.n nVar;
        if (this.pu == null || (nVar = this.f16589h) == null || nVar.u() == null) {
            return;
        }
        this.f16589h.u().setEasyPlayableSender(this.pu.c());
        this.pu.c(this.f16589h.u().getEasyPlayableLayout(), null);
    }

    public void gu() {
        this.f16598nb.ve();
        this.f16609zb.qp();
        this.eo.c(1);
        this.tt.removeMessages(1200);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, 0);
            if (yv()) {
                jSONObject.put("reduce_duration", this.bx.l());
            }
            this.f16589h.c("playableStateChange", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
        if (!this.f16583b.c(1)) {
            this.f16608z.set(true);
        }
        c(1, (com.byazt.xjc.uj) null);
    }

    public void i() {
        float[] fArrC = com.byazt.biq.tt.c(this.sv.getApplicationContext(), this.iu, this.f16593j);
        float f10 = fArrC[0];
        float f11 = fArrC[1];
        if (this.iu == 100.0f) {
            this.dz = (int) f10;
            this.f16596ma = (int) f11;
            return;
        }
        int[] iArrC = com.byazt.biq.tt.c(this.sv.getApplicationContext(), this.iu, this.qp.qe(), this.f16593j);
        int i10 = iArrC[0];
        int i11 = iArrC[1];
        int i12 = iArrC[2];
        int i13 = iArrC[3];
        float f12 = i10;
        float f13 = i12;
        this.dz = (int) ((f10 - f12) - f13);
        float f14 = i11;
        float f15 = i13;
        this.f16596ma = (int) ((f11 - f14) - f15);
        if (!h.c(this.qp) || com.byazt.dl.uj.c(String.valueOf(this.f16592ic))) {
            try {
                this.f16599p.c(pf.ve(this.sv, f12), pf.ve(this.sv, f14), pf.ve(this.sv, f13), pf.ve(this.sv, f15));
            } catch (Throwable unused) {
            }
        }
    }

    public void m() {
        this.tt.removeMessages(400);
    }

    public byte my() {
        com.byazt.dqg.n nVar = this.f16589h;
        if (nVar != null) {
            return nVar.da();
        }
        return (byte) 0;
    }

    public void n() {
        com.byazt.kcl.tt ttVar;
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.fcd.c cVar = this.bx;
            if (cVar != null) {
                jSONObject.put("reward_full_scene_type", cVar.eo());
            }
        } catch (Exception unused) {
        }
        yp.c().c(this.qp, "stats_reward_full_show_endcard", jSONObject);
        if (isDestroyed() || isFinishing() || (ttVar = this.f16609zb) == null || ttVar.cu()) {
            return;
        }
        if (!my.uj(this.qp)) {
            this.f16609zb.uj(true);
        }
        this.bx.zm();
        if (this.bx instanceof com.byazt.fcd.da) {
            this.f16583b.tt(true);
            this.f16583b.a();
        }
        if (!(this.bx instanceof com.byazt.fcd.sp) || !this.f16609zb.gt() || (this.bx instanceof x)) {
            this.f16609zb.qy();
        }
        this.eo.c(true);
        this.f16598nb.c(this.rl);
        this.f16609zb.t();
        if ((this.bx instanceof com.byazt.fcd.sp) && this.f16609zb.h()) {
            this.f16609zb.i();
            return;
        }
        this.eo.c(2);
        com.byazt.dyf.tt ttVar2 = this.lr;
        if (ttVar2 != null) {
            ttVar2.resetDislikeStatus();
        }
        com.byazt.qq.tt.c cVar2 = this.f16587f;
        if (cVar2 != null) {
            cVar2.n();
        }
        com.byazt.dqg.tt ttVar3 = this.md;
        if (ttVar3 != null) {
            ttVar3.n(8);
        }
        this.f16609zb.ve(false);
        if (!this.f16609zb.nu()) {
            if (!xd.sl(this.qp)) {
                this.f16609zb.c(false, TTAdConstant.INTERACTION_TYPE_CODE, "end_card_timeout");
            }
            this.f16609zb.n(true);
            this.cu.x();
            return;
        }
        if (!xd.sl(this.qp) && !rl.tt(this.qp)) {
            this.f16609zb.c(true, 0, (String) null);
        }
        this.f16609zb.yp();
        this.tt.sendEmptyMessageDelayed(500, 100L);
    }

    public void nu() {
        this.cu.da();
    }

    public void qy() {
        this.eo.c(1);
        if (!kp.nu(this.qp)) {
            this.eo.c(false, null, null, true, true);
        }
        this.eo.c(true);
        this.eo.n(true);
        this.eo.a(false);
        this.eo.tt(this.qp.fe());
        this.f16598nb.c(this.rl, this.uj.containsKey(0));
        this.tt.sendEmptyMessage(1200);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, 1);
            this.f16589h.c("playableStateChange", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void rh() {
        n();
    }

    public boolean rl() {
        com.byazt.dyf.tt ttVar = this.lr;
        if (ttVar != null) {
            return ttVar.isShow();
        }
        return false;
    }

    public void sl() {
        if (this.bx.kk()) {
            this.cu.c(3);
            this.cu.my();
            this.cu.ve(true);
            c(false, false);
        }
    }

    public void sp() {
        com.byazt.hkv.n nVar = new com.byazt.hkv.n(this.sv, this.qp, this.f16584c, yv() ? 7 : 5) { // from class: com.byazt.lcf.TTBaseVideoActivity.20
            @Override // com.byazt.hkv.n, com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, da daVar) {
                if (TTBaseVideoActivity.this.qp != null && TTBaseVideoActivity.this.qp.by() == 1 && TTBaseVideoActivity.this.f16589h != null) {
                    if (daVar == null) {
                        daVar = new da();
                    }
                    daVar.tt(TTBaseVideoActivity.this.f16589h.a() ? TTBaseVideoActivity.this.f16589h.da() : (byte) 0);
                }
                super.c(view, daVar);
                com.byazt.zo.tt ttVar = (com.byazt.zo.tt) this.f14955x.c(com.byazt.zo.tt.class);
                if (ttVar == null || !ttVar.tt(view)) {
                    return;
                }
                TTBaseVideoActivity.this.c(2);
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.or.c(view, tTBaseVideoActivity.f16607y, daVar);
            }
        };
        this.lo = nVar;
        if (this.iu != 100.0f) {
            ((com.byazt.nat.c) nVar.c(com.byazt.nat.c.class)).c(this.ny);
        }
        c((com.byazt.vis.ve) this.lo.c(com.byazt.vis.ve.class));
        this.lo.c(this.md.u());
        ((com.byazt.vis.c) this.lo.c(com.byazt.vis.c.class)).c(ic());
        com.byazt.hkv.tt ttVar = new com.byazt.hkv.tt(this.sv, this.qp, this.f16584c, yv() ? 7 : 5) { // from class: com.byazt.lcf.TTBaseVideoActivity.21
            @Override // com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view, da daVar) {
                TTBaseVideoActivity.this.pf.c(view, daVar);
            }
        };
        this.f16601r = ttVar;
        c((com.byazt.vis.ve) ttVar.c(com.byazt.vis.ve.class));
        this.f16607y = new com.byazt.kcl.c.InterfaceC0356c() { // from class: com.byazt.lcf.TTBaseVideoActivity.22
            @Override // com.byazt.kcl.c.InterfaceC0356c
            public void c(String str, JSONObject jSONObject) {
                TTBaseVideoActivity.this.pf.c(str, jSONObject);
            }

            @Override // com.byazt.kcl.c.InterfaceC0356c
            public void c(View view, da daVar) {
                TTBaseVideoActivity.this.pf.c(view, daVar);
            }
        };
        this.f16602s = new com.byazt.kcl.c.tt() { // from class: com.byazt.lcf.TTBaseVideoActivity.2
            @Override // com.byazt.kcl.c.tt
            public void c(boolean z10) {
                if (z10) {
                    TTBaseVideoActivity.this.f16609zb.c(1, 0);
                }
                TTBaseVideoActivity.this.c("点击开始下载");
            }

            @Override // com.byazt.kcl.c.tt
            public void tt(boolean z10, long j10, long j11, String str, String str2) {
                if (z10) {
                    TTBaseVideoActivity.this.f16609zb.c(j11, j10, 2);
                }
                TTBaseVideoActivity.this.c("下载暂停");
            }

            @Override // com.byazt.kcl.c.tt
            public void ve(boolean z10, long j10, long j11, String str, String str2) {
                if (z10) {
                    TTBaseVideoActivity.this.f16609zb.c(j11, j10, 4);
                }
                TTBaseVideoActivity.this.c("下载失败");
            }

            @Override // com.byazt.kcl.c.tt
            public void c(boolean z10, long j10, long j11, String str, String str2) {
                if (z10) {
                    TTBaseVideoActivity.this.f16609zb.c(j11, j10, 3);
                }
                if (j10 > 0) {
                    int i10 = (int) ((j11 * 100) / j10);
                    TTBaseVideoActivity.this.c("已下载" + i10 + "%");
                }
            }

            @Override // com.byazt.kcl.c.tt
            public void c(boolean z10, long j10, String str, String str2) {
                if (z10) {
                    TTBaseVideoActivity.this.f16609zb.c(5, 100);
                }
                TTBaseVideoActivity.this.c("点击安装");
            }

            @Override // com.byazt.kcl.c.tt
            public void c(boolean z10, String str, String str2) {
                if (z10) {
                    TTBaseVideoActivity.this.f16609zb.c(6, 100);
                }
                TTBaseVideoActivity.this.c("点击打开");
            }
        };
        this.bx.c(this.lo);
    }

    public void t() {
        yp.c().c(this.qp, "stats_reward_full_completed", this.pf.c(new JSONObject()));
        if (this.f16586da.getAndSet(true)) {
            return;
        }
        c("onVideoComplete", (Bundle) null);
    }

    public void tt() {
        finish();
    }

    public void u() {
        if (this.f16591i.getAndSet(true)) {
            return;
        }
        c("onVideoError", (Bundle) null);
    }

    public void yp() {
        if (this.f16586da.get() || this.f16606x.getAndSet(true)) {
            return;
        }
        c("onSkippedVideo", (Bundle) null);
    }

    public void z() {
        this.tt.removeMessages(700);
        this.tt.removeMessages(600);
    }

    public boolean zm() {
        if (gr() || this.cu.nb()) {
            return false;
        }
        com.byazt.fcd.c cVar = this.bx;
        if ((cVar != null && !cVar.kk()) || this.f16598nb.uj() || this.f16609zb.cu()) {
            return false;
        }
        if (this.cu.qy()) {
            if ((!this.cu.ve() && !this.cu.tt()) || this.cu.tt()) {
                return false;
            }
            this.cu.ve();
        }
        return true;
    }

    private void tt(final com.byazt.qq.da daVar) {
        final boolean[] zArr = {false};
        com.byazt.ja.tt.c(new com.byazt.ja.tt.c() { // from class: com.byazt.lcf.TTBaseVideoActivity.5
            @Override // com.byazt.ja.tt.c
            public void c() {
                zArr[0] = true;
                daVar.tt();
            }

            @Override // com.byazt.ja.tt.c
            public void c(int i10) {
                zArr[0] = true;
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this.sv;
                if (tTBaseVideoActivity != null && tTBaseVideoActivity.getIntent() != null) {
                    TTBaseVideoActivity.this.sv.getIntent().putExtra("remainTime", i10);
                }
                if (i10 > 0) {
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    if (tTBaseVideoActivity2.c(tTBaseVideoActivity2.qp, daVar)) {
                        return;
                    }
                }
                daVar.tt();
            }
        });
        tt("onClickBrowseClose");
        new CountDownTimer(1000L, 1000L) { // from class: com.byazt.lcf.TTBaseVideoActivity.6
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (zArr[0]) {
                    return;
                }
                TTBaseVideoActivity.this.tt();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
            }
        }.start();
    }

    public boolean c(Bundle bundle) {
        this.or.c(this.qp, this.f16584c, this.f16590hd);
        if (bundle != null) {
            this.or.c();
        }
        com.byazt.omf.uj.c().tt(this.qp);
        if (this.qp != null) {
            return true;
        }
        m.uj("TTBaseVideoActivity", "mMaterialMeta is null , no data to display ,the TTBaseVideoActivity finished !!");
        tt();
        return false;
    }

    public void m(int i10) {
        if (i10 == 0) {
            return;
        }
        this.f16597n.put(Integer.valueOf(i10), Boolean.TRUE);
    }

    public void nu(int i10) {
        if (i10 == 0) {
            return;
        }
        this.f16597n.remove(Integer.valueOf(i10));
    }

    public void rh(final int i10) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.15
            @Override // java.lang.Runnable
            public void run() {
                int i11 = i10;
                if (i11 == 0) {
                    TTBaseVideoActivity.this.f16583b.ve();
                } else if (i11 == 1) {
                    TTBaseVideoActivity.this.t();
                } else {
                    if (i11 != 2) {
                        return;
                    }
                    TTBaseVideoActivity.this.a(1);
                }
            }
        });
    }

    public void uj() {
        this.f16599p.c(this.bx);
        iu();
        this.md = this.bx.c(yv());
        this.f16589h = this.bx.t();
        this.f16585d = this.bx.u();
        this.md.c();
        sp();
        this.md.c(this.lo, this.f16601r);
        this.md.c(this.or.sp());
        this.eo.c(this.qp, this.f16609zb, yv(), this.lo);
        this.eo.uj(this.rl);
        if (this.or.ve()) {
            ((com.byazt.nat.c) this.lo.c(com.byazt.nat.c.class)).c(this.or.tt());
            this.or.c(this.f16607y);
        }
        this.or.c(this.f16602s);
        this.or.c(this.ny);
        this.f16609zb.c(this.eo, this.or, yv(), this.f16584c, this.dz, this.f16596ma);
        this.f16609zb.c(this.qp, this.lo, this.ny.getVideoModel(), this.f16585d);
        this.f16598nb.c(this.f16609zb, this.qp, this.f16584c, this.eo);
        this.pf.c(this.qp, this.f16584c, this.md.u());
        this.cu.c(this.qp);
        this.hq = new com.byazt.bzd.c();
        this.pu = new com.byazt.sy.n(this.qp, this.kp);
        this.lt = new com.byazt.wg.tt(this.f16584c);
        this.to = new com.byazt.rob.c(this.qp, this.sv);
    }

    public void ve() {
        this.cu.qp();
        this.cu.c(2);
        this.cu.i();
        yp();
        a(2);
    }

    public Map<String, Object> x() {
        com.byazt.dqg.n nVar;
        Map<String, Object> mapIc = ic();
        if (this.gr > 0) {
            mapIc.put("object_media_holder_time", Long.valueOf((System.currentTimeMillis() - this.gr) / 1000));
        }
        com.byazt.fcd.c cVar = this.bx;
        if (cVar != null && cVar.a() && (nVar = this.f16589h) != null) {
            yv.c(mapIc, this.qp, nVar.u());
        }
        return mapIc;
    }

    public void u(int i10) {
        this.md.n(i10);
    }

    public void z(int i10) {
        com.byazt.dqg.n nVar;
        nu(i10);
        if (this.bx instanceof x) {
            this.tt.postDelayed(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.14
                @Override // java.lang.Runnable
                public void run() {
                    TTBaseVideoActivity.this.hj();
                }
            }, 500L);
        } else {
            hj();
        }
        if (!gr()) {
            if (this.f16609zb.d()) {
                this.tt.sendEmptyMessageDelayed(1200, 1000L);
            }
            if (!kp() || this.f16609zb.cu() || this.f16609zb.d()) {
                this.bx.gu();
            }
            this.f16609zb.uj();
        }
        if (i10 == 1 || (nVar = this.f16589h) == null) {
            return;
        }
        nVar.uj(gr());
    }

    public void t(int i10) {
        this.bx.ve(i10);
        ve(0);
    }

    public void yp(int i10) {
        com.byazt.fcd.c cVar;
        com.byazt.dqg.n nVar;
        if (this.cu.tt()) {
            HashMap map = new HashMap();
            map.put("pause_from", Integer.valueOf(i10));
            this.cu.c(map);
        }
        this.tt.removeMessages(300);
        this.tt.removeMessages(1200);
        m(i10);
        if ((kp() && kp.nu(this.qp) && this.f16598nb.uj()) || (cVar = this.bx) == null) {
            return;
        }
        cVar.qy();
        this.f16609zb.tt(kp());
        if (i10 == 1 || (nVar = this.f16589h) == null) {
            return;
        }
        nVar.uj(gr());
    }

    public void a(int i10) {
        int iN = n(i10);
        if (i10 != 2) {
            if (this.f16598nb.uj()) {
                return;
            }
            if (this.cu.t()) {
                this.cu.da();
                return;
            }
            if (kp.nu(this.qp)) {
                if (this.sl.get() && !this.f16603t.get()) {
                    if (iN == 1 && !this.uj.containsKey(0) && yv()) {
                        this.eo.tt((this.qp.i() == 3 && kp.rh(this.qp)) ? "奖励就快来了\n去详情页看看也累计时长哦～" : "奖励还在路上狂奔\n再等一下下哦～");
                    }
                    this.cu.pf();
                }
                if (!this.sl.get() && this.f16603t.get()) {
                    return;
                }
                if (iN == 1 && (!this.sl.get() || !this.f16603t.get())) {
                    return;
                }
            }
        }
        if (iN == 1) {
            tt();
            return;
        }
        if (iN == 2) {
            if (this.sp.get()) {
                this.f16609zb.qy();
            }
            n();
        } else if (iN == 3) {
            this.cu.pf();
        } else if (iN == 4 && i10 != 3) {
            nu();
        }
    }

    public void sl(int i10) {
        if (this.f16589h != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("time", i10);
            } catch (JSONException e10) {
                m.c(e10);
            }
            this.f16589h.c("reduceTime", jSONObject);
        }
    }

    public void tt(String str) {
        com.byazt.omf.d dVarP = this.f16609zb.p();
        if (dVarP != null && !isFinishing()) {
            try {
                dVarP.ve(str, null);
                return;
            } catch (Exception e10) {
                tt();
                m.c(e10);
                return;
            }
        }
        tt();
    }

    public void ve(String str) {
        if (isFinishing()) {
            return;
        }
        if (this.lr == null) {
            com.byazt.dyf.tt ttVar = new com.byazt.dyf.tt(this.sv, this.qp.wq(), this.f16584c, true, com.byazt.xky.tt.c());
            this.lr = ttVar;
            com.byazt.tl.ve.c(this.sv, this.qp, ttVar);
            this.lr.setDislikeInteractionCallback(new com.byazt.dyf.tt.c() { // from class: com.byazt.lcf.TTBaseVideoActivity.10
                @Override // com.byazt.dyf.tt.c
                public void c() {
                    TTBaseVideoActivity.this.sv();
                }

                @Override // com.byazt.dyf.tt.c
                public void tt() {
                    TTBaseVideoActivity.this.aw();
                }

                @Override // com.byazt.dyf.tt.c
                public void c(int i10, String str2, boolean z10) {
                    TTBaseVideoActivity.this.tt.post(new Runnable() { // from class: com.byazt.lcf.TTBaseVideoActivity.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TTBaseVideoActivity.this.aw();
                        }
                    });
                }
            });
        }
        this.lr.setDislikeSource(str);
        this.lr.showDislikeDialog();
    }

    public boolean c(long j10, boolean z10) {
        if (!this.cu.qy()) {
            return false;
        }
        if (!z10 || !this.cu.gu()) {
            f();
        }
        boolean zC = this.cu.c(j10, this.rl, this.bx.gr());
        if (zC && !z10) {
            if (rl.sp(this.qp)) {
                return true;
            }
            tt(true, true);
        }
        return zC;
    }

    public void da(int i10) {
        com.byazt.zd.tt ttVarQp;
        com.byazt.dqg.n nVar;
        com.byazt.fcd.c cVar = this.bx;
        if ((cVar instanceof x) && (ttVarQp = cVar.qp()) != null && ttVarQp.sl() == 1 && i10 == 1) {
            if (this.nt.getAndSet(false)) {
                int displayDpi = ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getDisplayDpi();
                float fA = pf.a(gt.getContext());
                float fSp = pf.sp(gt.getContext());
                Map<String, Object> mapIc = ic();
                mapIc.putAll(ttVarQp.sp());
                i.c cVarTt = new i.c().a(-1.0f).n(-1.0f).uj(-1.0f).ve(-1.0f).tt(-1L).c(-1L).uj(-1).n(-1).a(-1024).ve(com.byazt.omf.x.m().tt() ? 1 : 2).tt(displayDpi).c(fA).tt(fSp);
                ic icVar = this.qp;
                if (icVar != null && icVar.by() == 1 && (nVar = this.f16589h) != null) {
                    cVarTt.c(nVar.a() ? this.f16589h.da() : (byte) 0);
                }
                cVarTt.c(com.byazt.wz.x.tt(this.qp));
                com.byazt.ddx.uj.c("click", this.qp, cVarTt.c(), this.f16584c, true, mapIc, -1, false, false);
            }
        }
    }

    public void tt(int i10) {
        if (i10 <= 0) {
            this.eo.c(false, null, null, true, true);
        } else {
            this.tt.sendEmptyMessageDelayed(600, i10);
        }
    }

    public void c(final com.byazt.vis.ve veVar) {
        veVar.c(new com.byazt.vis.ve.c() { // from class: com.byazt.lcf.TTBaseVideoActivity.3
            @Override // com.byazt.vis.ve.c
            public boolean c() {
                veVar.c(TTBaseVideoActivity.this.x());
                veVar.c(TTBaseVideoActivity.this.f16584c);
                veVar.c(TTBaseVideoActivity.this.yf);
                return TTBaseVideoActivity.this.kk.get();
            }
        });
    }

    public void sp(int i10) {
        this.f16599p.c(i10);
    }

    public void tt(boolean z10) {
        Message message = new Message();
        message.what = 400;
        this.tt.sendMessageDelayed(message, z10 ? 2000L : 0L);
    }

    public void c(String str) {
        this.f16609zb.c(str);
    }

    private void c(com.byazt.qq.da daVar) {
        int iPf = this.bx.pf();
        TTBaseVideoActivity tTBaseVideoActivity = this.sv;
        if (tTBaseVideoActivity != null && tTBaseVideoActivity.getIntent() != null) {
            this.sv.getIntent().putExtra("remainTime", iPf);
        }
        if (iPf > 0) {
            if (c(this.qp, daVar)) {
                return;
            }
            daVar.tt();
            return;
        }
        tt();
    }

    public void tt(boolean z10, boolean z11) {
        if (z10) {
            Map<String, Object> mapX = x();
            this.kk.set(true);
            mapX.put("is_adm", Boolean.valueOf(this.zm));
            mapX.put("is_play_again", Boolean.valueOf(md()));
            mapX.put("if_cache_callback", Integer.valueOf(this.yv == 1 ? 1 : 0));
            mapX.put("src_req_id", this.qp.xv());
            mapX.put("is_map", Boolean.valueOf(this.qp.rp()));
            mapX.put("is_repeat", Boolean.valueOf(this.rh.getAndSet(true)));
            com.byazt.ddx.uj.c(this.qp, this.f16584c, mapX, this.yf);
            this.pf.n().c(1.0f, 11);
            com.byazt.pf.c.c().uj();
            cu.c(this.qp.eo());
        }
        if (z11) {
            if (!or.tt(yv(), this.qp, true)) {
                boolean zOq = gt.tt().oq();
                if (this.nu.getAndSet(true) && !zOq) {
                    yp.c().uj(this.qp, "stats_callback_repeat");
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("has_show_event", this.kk.get());
                    c("onAdShow", bundle);
                }
            }
            if (this.bx.a()) {
                this.f16589h.sp();
            }
            com.byazt.sy.n nVar = this.pu;
            if (nVar != null && nVar.c() != null) {
                this.pu.c().uj();
            }
            if (this.qp.yv() && this.qp.yp() != null) {
                com.byazt.yxu.c.c().c(getApplicationContext(), this.qp.yp().tt());
            }
        }
        ve(false);
    }

    public void i(int i10) {
        if (this.to == null) {
            return;
        }
        com.byazt.dj.tt ttVarC = com.byazt.lvl.c.c().c(this.qp, nb.c(this.qp, ""));
        this.to.tt(true);
        this.to.c(i10, ttVarC);
    }

    public boolean c(ic icVar, final com.byazt.qq.da daVar) {
        if (!yv() || !this.qp.dh() || this.uj.containsKey(0) || isFinishing()) {
            return false;
        }
        if (System.currentTimeMillis() - this.ir < 1000) {
            return true;
        }
        this.ir = System.currentTimeMillis();
        com.byazt.qq.tt.c cVarC = this.bx.c(icVar, new com.byazt.qq.da() { // from class: com.byazt.lcf.TTBaseVideoActivity.7
            @Override // com.byazt.qq.da
            public void c() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.c();
                }
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.pf.c("reward_retain_dialog_cancel", tTBaseVideoActivity.f16587f.c(), TTBaseVideoActivity.this.f16587f.tt());
            }

            @Override // com.byazt.qq.da
            public void tt() {
                TTBaseVideoActivity.this.f16604u.set(true);
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.tt();
                }
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.pf.c("reward_retain_dialog_skip", tTBaseVideoActivity.f16587f.c(), TTBaseVideoActivity.this.f16587f.tt());
            }

            @Override // com.byazt.qq.da
            public void ve() {
            }

            @Override // com.byazt.qq.da
            public void c(int i10) {
                TTBaseVideoActivity.this.c(i10, true);
                TTBaseVideoActivity.this.eo.tt("恭喜您，可提前" + i10 + "s获得奖励～");
            }
        });
        this.f16587f = cVarC;
        this.pf.c("reward_retain_dialog_show", cVarC.c(), this.f16587f.tt());
        return this.f16587f.ve();
    }

    public void uj(boolean z10) {
        this.f16588g = z10;
    }

    public void c(long j10) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 700;
        this.tt.sendMessageDelayed(messageObtain, j10);
    }

    @Override // com.byazt.fh.tt
    public void c(boolean z10) {
        if (z10) {
            if (this.f16589h.a()) {
                return;
            }
            this.bx.uj(true);
            return;
        }
        if (this.f16589h.a() && this.cu.zb() != null) {
            this.cu.zb().c(8);
        }
        this.bx.uj(false);
        if (this.f16589h.a() || this.f16593j == 2 || !com.byazt.ex.c.c(this.qp)) {
            return;
        }
        this.md.a(8);
    }

    public int n(int i10) {
        boolean z10 = i10 == 2;
        int iWn = this.qp.wn();
        if (iWn == 1) {
            return 1;
        }
        if (iWn != 3) {
            if (iWn == 4 || iWn == 5) {
                return z10 ? 1 : 3;
            }
            if (iWn == 6) {
                return z10 ? 1 : 4;
            }
            if (iWn == 7 && z10 && this.f16604u.get()) {
                return 1;
            }
        } else if (z10) {
            return 1;
        }
        return 2;
    }

    public void c(boolean z10, boolean z11) {
        this.cu.tt(z11);
        u();
        if (z10) {
            this.yp.set(true);
            if (kp.nu(this.qp)) {
                this.bx.d();
            }
            this.eo.c(false, null, null, true, true);
            n();
            return;
        }
        if (kp.rl(this.qp)) {
            this.f16609zb.pf();
        } else {
            this.eo.c(false, null, null, true, true);
            uj(0);
        }
        if (this.cu.nb()) {
            return;
        }
        if (kp.nu(this.qp)) {
            this.bx.d();
        }
        n();
    }

    public boolean tt(long j10, boolean z10) {
        this.cu.c(this.lo);
        this.cu.c(this.bx.my(), this.f16584c, yv());
        this.cu.tt(x());
        if (this.bx.a()) {
            this.f16589h.c(this.cu.cu());
        }
        this.cu.c(this.tk);
        boolean zC = c(j10, z10);
        if (zC && !z10) {
            this.f16594l = (int) (System.currentTimeMillis() / 1000);
        }
        return zC;
    }

    public void tt(Bundle bundle) {
        if (bundle != null) {
            this.f16590hd = bundle.getString("multi_process_key");
            this.gu = bundle.getBoolean("is_preload");
            this.gr = bundle.getLong("object_create_ts");
            this.zm = bundle.getBoolean("is_adm");
            this.yv = bundle.getInt("key_video_cache_callback", -1);
            this.bm = bundle.getString("rit_scene");
            String string = bundle.getString("_client_bidding_aution_price");
            this.yf = TextUtils.isEmpty(string) ? null : Double.valueOf(Double.parseDouble(string));
            this.rl = bundle.getBoolean("is_mute");
            long j10 = bundle.getLong("video_current");
            if (j10 > 0) {
                this.cu.c(j10);
            }
        }
    }

    public void c(int i10, com.byazt.xjc.uj ujVar) {
        if (rl.ve(this.qp) || this.f16604u.get() || this.f16591i.get()) {
            return;
        }
        int iDa = 0;
        if (i10 == 1) {
            if (!this.f16608z.get()) {
                return;
            }
            if (ujVar == null || !ujVar.f21920c) {
                this.f16608z.set(false);
            }
        }
        int iC = this.f16583b.c(i10, ujVar != null && ujVar.uj);
        if (iC == 0) {
            return;
        }
        if (iC == 3 && ujVar != null && ujVar.ve) {
            iDa = or.da();
        }
        this.f16583b.c(new com.byazt.xjc.ve.c().c(this.f16590hd).c(this.bx.pf()).tt(iDa).c(this.f16586da.get()).c(this.uj.keySet()).tt(this.rl).c(this.f16600q).ve(iC).uj(this.bx.md()).ve(this.f16583b.uj() ? this.tx : ic.ve(this.qp)).c(), iC, ujVar);
    }

    public void tt(Intent intent) {
        if (intent == null || TextUtils.isEmpty(intent.getStringExtra("insert_ad_bundle"))) {
            return;
        }
        com.byazt.xjc.ve veVar = new com.byazt.xjc.ve(intent.getStringExtra("insert_ad_bundle"));
        this.f16590hd = veVar.c();
        if (or.c(this.qp) == 1) {
            this.f16605v = veVar.da();
        }
        this.tx = veVar.sl();
        this.f16586da.set(veVar.uj());
        this.uj.putAll(veVar.x());
        this.f16583b.c(veVar);
        this.rl = veVar.n();
        this.f16600q.ve(veVar.a());
    }

    @Override // com.byazt.fh.tt
    public void c(int i10) {
        this.my.set(true);
        if (System.currentTimeMillis() - this.hj > 50) {
            this.hj = System.currentTimeMillis();
            c("onAdVideoBarClick", (Bundle) null);
        }
        if (!isFinishing()) {
            com.byazt.ouz.x.c(this.f16589h.u());
        }
        if (!this.f16582a.get()) {
            this.f16582a.set(true);
        }
        if (!this.f16583b.c(1)) {
            this.f16608z.set(true);
        }
        ve(0);
        da(i10);
    }

    public void c(Intent intent) {
        if (intent != null) {
            this.bm = intent.getStringExtra("rit_scene");
            this.gu = intent.getBooleanExtra("is_preload", false);
            this.gr = intent.getLongExtra("object_create_ts", 0L);
            this.zm = intent.getBooleanExtra("is_adm", false);
            this.f16590hd = intent.getStringExtra("multi_process_key");
            this.yv = intent.getIntExtra("key_video_cache_callback", -1);
            String stringExtra = intent.getStringExtra("_client_bidding_aution_price");
            this.yf = TextUtils.isEmpty(stringExtra) ? null : Double.valueOf(Double.parseDouble(stringExtra));
            com.byazt.rob.c cVar = this.to;
            if (cVar != null) {
                cVar.c(intent.getBooleanExtra("is_second_page", false));
            }
        }
    }

    public void c(int i10, boolean z10) {
        t(i10);
        if (z10) {
            sl(i10);
        }
    }

    public void c(float f10, float f11, float f12, float f13, int i10) {
        com.byazt.dqg.n nVar = this.f16589h;
        if (nVar == null || nVar.c() == null) {
            return;
        }
        int measuredWidth = this.f16589h.c().getMeasuredWidth();
        int measuredHeight = this.f16589h.c().getMeasuredHeight();
        if (this.cu.cu() instanceof com.byazt.zd.c ? ((com.byazt.zd.c) this.cu.cu()).hd() : false) {
            this.f16589h.c().animate().translationY(-(measuredHeight * (1.0f - f11))).setDuration(i10).start();
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, f10, 1.0f, f11, measuredWidth * f12, measuredHeight * f13);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setDuration(i10);
        this.f16589h.c().startAnimation(scaleAnimation);
    }

    public Map<String, Object> c(ic icVar) {
        HashMap map = new HashMap();
        String str = this.bm;
        if (str != null) {
            map.put("rit_scene", str);
        }
        map.put("insert_ad_control", Integer.valueOf(or.c(icVar)));
        map.put("carousel_pos", Integer.valueOf(or.uj(icVar)));
        map.put("refresh_ad_control", Integer.valueOf(or.tt(icVar)));
        if (this.f16583b.tt() != 0) {
            map.put("carousel_type", Integer.valueOf(this.f16583b.tt()));
        } else if (lt.x(icVar)) {
            map.put("carousel_type", 4);
        }
        com.byazt.kcl.ve veVar = this.pf;
        if (veVar != null) {
            veVar.c(map);
        }
        return map;
    }

    public void c(ic icVar, com.byazt.hkv.tt ttVar) {
        this.f16609zb.c(icVar, ttVar);
        this.f16598nb.c(icVar);
    }

    public void c(int i10, int i11) {
        this.f16583b.c(i10, i11, 0);
    }

    public void c(int i10, int i11, int i12) {
        this.f16583b.c(i10, i11, i12);
    }
}
