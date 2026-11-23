package com.byazt.kcl;

import android.graphics.Color;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.aas.rl;
import com.byazt.ete.h;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.my;
import com.byazt.ete.xd;
import com.byazt.fcd.x;
import com.byazt.go.AbstractEndCardFrameLayout;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.d;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.ConstantsInternal;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16139a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTBaseVideoActivity f16140c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.hkv.tt f16141da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.kcl.c f16142i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16144n;
    public boolean qy;
    public com.byazt.ac.tt sl;
    public AbstractEndCardFrameLayout sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.ac.ve f16145t;
    public ic tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final com.byazt.rpt.c f16146u;
    public boolean uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public n f16147x;
    public com.byazt.ac.c yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f16148z;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f16143m = -1;
    public boolean nu = false;
    public final AtomicBoolean rh = new AtomicBoolean(false);
    public final AtomicBoolean my = new AtomicBoolean(false);
    public int rl = 0;
    public boolean gt = false;

    public interface c {
        void c();
    }

    /* JADX INFO: renamed from: com.byazt.kcl.tt$tt, reason: collision with other inner class name */
    public interface InterfaceC0357tt {
        void c();

        void tt();

        n ve();
    }

    public tt(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f16140c = tTBaseVideoActivity;
        this.f16146u = new com.byazt.rpt.c(tTBaseVideoActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aw() {
        if (this.f16140c.isDestroyed()) {
            return;
        }
        Toast toast = new Toast(this.f16140c);
        toast.setDuration(1);
        toast.setGravity(17, 0, 0);
        LinearLayout linearLayout = new LinearLayout(this.f16140c);
        linearLayout.setBackgroundColor(Color.parseColor("#CC161823"));
        linearLayout.setOrientation(1);
        linearLayout.setPadding(pf.ve(this.f16140c, 20.0f), pf.ve(this.f16140c, 12.0f), pf.ve(this.f16140c, 20.0f), pf.ve(this.f16140c, 12.0f));
        TextView textView = new TextView(this.f16140c);
        textView.setTextColor(-1);
        textView.setText("请求异常无法发放奖励，请关闭重试");
        textView.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        toast.show();
        this.f16140c.nb().postDelayed(new Runnable() { // from class: com.byazt.kcl.tt.5
            @Override // java.lang.Runnable
            public void run() {
                tt.this.aw();
            }
        }, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS);
    }

    private void ic() {
        try {
            if (!h.c(this.tt) || this.qy) {
                return;
            }
            float[] fArrC = com.byazt.biq.tt.c(this.f16140c.getApplicationContext(), this.tt.fr(), this.tt.by());
            float f10 = fArrC[0];
            float f11 = fArrC[1];
            if (this.tt.fr() == 100.0f) {
                this.f16144n = (int) f10;
                this.f16139a = (int) f11;
                return;
            }
            int[] iArrC = com.byazt.biq.tt.c(this.f16140c.getApplicationContext(), this.tt.fr(), this.tt.qe(), this.tt.by());
            int i10 = iArrC[0];
            int i11 = iArrC[1];
            int i12 = iArrC[2];
            int i13 = iArrC[3];
            float f12 = i10;
            float f13 = i12;
            this.f16144n = (int) ((f10 - f12) - f13);
            float f14 = i11;
            float f15 = i13;
            this.f16139a = (int) ((f11 - f14) - f15);
            this.f16140c.getWindow().getDecorView().setPadding(pf.ve(this.f16140c, f12), pf.ve(this.f16140c, f14), pf.ve(this.f16140c, f13), pf.ve(this.f16140c, f15));
        } catch (Throwable unused) {
        }
    }

    public boolean bx() {
        return cu() && this.my.get();
    }

    public boolean cu() {
        return this.rh.get();
    }

    public boolean d() {
        return this.f16148z;
    }

    public int da() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            return cVar.da();
        }
        return 0;
    }

    public boolean eo() {
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar == null) {
            return false;
        }
        return ttVar.rl();
    }

    public void gr() {
        if (rl.ve(this.tt) || bx()) {
            return;
        }
        this.f16143m = Math.max(c(this.tt), 0);
        c(0L);
    }

    public boolean gt() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            return cVar.uj();
        }
        return false;
    }

    public void gu() {
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar != null) {
            ttVar.i();
        }
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.i();
        }
    }

    public boolean h() {
        return this.yp instanceof com.byazt.ac.ve;
    }

    public void i() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.yv();
        }
    }

    public void m() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.x();
        }
    }

    public void md() {
        ve(false);
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.a();
        }
        if (this.nu) {
            qp();
        }
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar != null) {
            this.yp = ttVar;
        }
    }

    public boolean my() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            return cVar.ve();
        }
        return false;
    }

    public String nb() {
        com.byazt.ac.c cVar = this.yp;
        return cVar != null ? cVar.gr() : "endcard";
    }

    public boolean nu() {
        boolean zRh = xd.sl(this.tt) ? rh() : my();
        if (this.yp == null && !TextUtils.isEmpty(xd.i(this.tt)) && gt.tt().qi()) {
            return true;
        }
        if (gt()) {
            return zRh || rl.tt(this.tt);
        }
        return false;
    }

    public boolean or() {
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            return veVar.zb();
        }
        return false;
    }

    public d p() {
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            return veVar.eo();
        }
        return null;
    }

    public void pf() {
        this.rl = kp.tt(this.tt, this.f16140c.to().pf());
        this.my.set(kp.rl(this.tt));
        com.byazt.fh.a.ve = true;
    }

    public void qp() {
        this.f16146u.ve();
    }

    public void qy() {
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar != null) {
            this.yp = ttVar;
        }
    }

    public boolean rh() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            return cVar.tt();
        }
        return false;
    }

    public boolean rl() {
        if (this.nu) {
            return true;
        }
        com.byazt.ac.c cVar = this.yp;
        return cVar instanceof com.byazt.ac.ve ? this.f16145t.d() : cVar instanceof com.byazt.ac.tt;
    }

    public String sl() {
        com.byazt.ac.c cVar = this.yp;
        return cVar != null ? cVar.sl() : "";
    }

    public void sp() {
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar != null) {
            ttVar.z();
        }
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.z();
        }
    }

    public int sv() {
        return this.rl;
    }

    public void t() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.nu();
        }
    }

    public void u() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.my();
        }
    }

    public void x() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.m();
        }
    }

    public void yp() {
        if (!this.f16140c.to().to()) {
            gr();
        }
        this.f16147x.ve(false);
        this.f16147x.a(false);
        this.f16147x.tt(this.tt.fe());
        this.f16147x.sp(false);
        ic();
        if (this.yp == null && gt.tt().qi() && !TextUtils.isEmpty(xd.i(this.tt))) {
            com.byazt.ac.tt ttVar = new com.byazt.ac.tt(this.f16140c, this.tt, this.ve, this.f16144n, this.f16139a, this.uj, this.sp);
            this.sl = ttVar;
            ttVar.c(this.uj, this.f16140c.ic(), this.f16147x.uj());
            this.sl.c(this.f16142i.sp(), this.f16141da);
            tt();
            this.yp = this.sl;
        }
        com.byazt.ac.c cVar = this.yp;
        if (cVar == null) {
            this.f16147x.n(false);
            return;
        }
        cVar.n();
        this.yp.c(1);
        this.f16147x.n(true ^ (this.yp instanceof com.byazt.ac.tt));
    }

    public boolean yv() {
        com.byazt.ac.ve veVar = this.f16145t;
        return veVar != null && veVar.ve();
    }

    public boolean z() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            return cVar.sp();
        }
        return false;
    }

    public void zb() {
        c(1000L);
    }

    public void zm() {
        ve(true);
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar == null || !veVar.ve()) {
            n(false);
        } else {
            this.f16145t.c(this.f16140c.to() instanceof x ? 2 : 0);
        }
        if (this.sl != null) {
            this.yp = this.f16145t;
        }
    }

    public void a() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.rh();
        }
        com.byazt.ac.c cVar2 = this.yp;
        if (cVar2 != null) {
            cVar2.yp();
        }
    }

    public void c(n nVar, com.byazt.kcl.c cVar, boolean z10, String str, int i10, int i11) {
        this.uj = z10;
        this.f16147x = nVar;
        this.f16142i = cVar;
        this.ve = str;
        this.f16144n = i10;
        this.f16139a = i11;
    }

    public void n() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.u();
        }
    }

    public void tt() {
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.p();
        }
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar != null) {
            ttVar.md();
        }
    }

    public void uj() {
        if (bx()) {
            return;
        }
        int i10 = this.f16143m;
        if (i10 >= 0) {
            this.f16140c.tt(i10);
            c(0L);
        }
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.zm();
        }
    }

    public void ve() {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.t();
        }
    }

    public void n(boolean z10) {
        if (cu() || d()) {
            this.nu = true;
            com.byazt.ac.c cVar = this.yp;
            if (cVar != null) {
                cVar.gt();
                this.yp.a();
            }
            com.byazt.ac.ve veVar = this.f16145t;
            if (veVar != null) {
                veVar.gu();
            }
            n nVar = this.f16147x;
            if (nVar != null) {
                nVar.sp();
            }
            if (this.f16147x != null && this.tt.sv()) {
                pf.c(this.f16147x.uj(), 0);
            }
            yp.c().a(new com.byazt.ee.c() { // from class: com.byazt.kcl.tt.3
                @Override // com.byazt.ee.c
                public com.byazt.qal.c c() throws Exception {
                    com.byazt.qal.tt ttVarA = com.byazt.qal.tt.tt().c(tt.this.uj ? 7 : 8).ve(String.valueOf(nb.t(tt.this.tt))).a(nb.m(tt.this.tt));
                    ttVarA.tt(tt.this.da()).sp(tt.this.sl());
                    ttVarA.x(tt.this.tt.w_()).uj(tt.this.tt.uj());
                    return ttVarA;
                }
            });
            this.f16146u.c();
            if (my.c(this.tt)) {
                this.f16140c.u(8);
            }
            this.f16147x.c(true);
            this.f16147x.sp(false);
            this.f16140c.nb().postDelayed(new Runnable() { // from class: com.byazt.kcl.tt.4
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.f16147x.c(true);
                    if (tt.this.f16147x.n()) {
                        return;
                    }
                    tt.this.f16147x.c(false, null, null, true, true);
                    if (tt.this.or() && tt.this.uj) {
                        tt.this.aw();
                    }
                }
            }, 500L);
            if (z10) {
                if (!kp.nu(this.tt)) {
                    this.f16147x.c(false, null, null, true, true);
                }
                this.f16147x.n(false);
                this.f16147x.tt(this.tt.fe());
            }
        }
    }

    public void ve(boolean z10) {
        this.f16148z = z10;
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.a(z10);
        }
    }

    public void a(boolean z10) {
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.n(z10);
        }
    }

    public void tt(boolean z10) {
        if (this.f16143m >= 0) {
            this.f16140c.z();
        }
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.uj(z10);
        }
    }

    public void c(ic icVar, com.byazt.hkv.tt ttVar, com.byazt.ua.c cVar, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        if (this.gt) {
            return;
        }
        this.gt = true;
        this.tt = icVar;
        this.f16141da = ttVar;
        this.f16146u.c(icVar);
        this.sp = abstractEndCardFrameLayout;
        c();
        c(cVar);
        this.qy = com.byazt.dl.uj.c(String.valueOf(nb.t(this.tt)));
    }

    public void uj(boolean z10) {
        this.rh.set(z10);
    }

    public void tt(int i10, int i11) {
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.tt(i10, i11);
        }
    }

    public void c() {
        if (this.tt.tx() == 1) {
            return;
        }
        if (rl.tt(this.tt)) {
            this.f16145t = new com.byazt.ac.ve(this.f16140c, this.tt, this.ve, this.f16144n, this.f16139a, this.uj, this.sp);
        }
        if (!TextUtils.isEmpty(xd.i(this.tt)) && !gt.tt().qi()) {
            this.sl = new com.byazt.ac.tt(this.f16140c, this.tt, this.ve, this.f16144n, this.f16139a, this.uj, this.sp);
        }
        com.byazt.ac.c cVar = this.f16145t;
        if (cVar == null) {
            cVar = this.sl;
        }
        this.yp = cVar;
    }

    public void c(long j10, long j11, int i10) {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.c(j10, j11, i10);
        }
    }

    public void c(int i10, int i11) {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.c(i10, i11);
        }
    }

    public void c(boolean z10) {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.tt(z10);
        }
    }

    public void c(com.byazt.ua.c cVar) {
        Map<String, Object> mapIc = this.f16140c.ic();
        this.f16146u.c(this.f16141da);
        com.byazt.ac.ve veVar = this.f16145t;
        if (veVar != null) {
            veVar.c(cVar);
            this.f16145t.c(this.uj, mapIc, this.f16147x.uj());
            this.f16145t.c(this.f16142i.sp(), this.f16141da);
            this.f16145t.c(new c() { // from class: com.byazt.kcl.tt.1
                @Override // com.byazt.kcl.tt.c
                public void c() {
                    tt.this.n(false);
                }
            });
            this.f16145t.c(new InterfaceC0357tt() { // from class: com.byazt.kcl.tt.2
                @Override // com.byazt.kcl.tt.InterfaceC0357tt
                public void c() {
                    tt.this.f16140c.tt(true, true);
                }

                @Override // com.byazt.kcl.tt.InterfaceC0357tt
                public void tt() {
                    tt.this.f16140c.t();
                }

                @Override // com.byazt.kcl.tt.InterfaceC0357tt
                public n ve() {
                    return tt.this.f16147x;
                }
            });
        }
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar != null) {
            ttVar.c(this.uj, mapIc, this.f16147x.uj());
            this.sl.c(this.f16142i.sp(), this.f16141da);
        }
    }

    public void c(Map<String, Object> map) {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.c(map);
        }
    }

    public void c(boolean z10, int i10, String str) {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.c(z10, i10, str);
        }
    }

    private int c(ic icVar) {
        return icVar.hz();
    }

    private void c(long j10) {
        int i10 = this.f16143m / 1000;
        if (!kp.nu(this.tt)) {
            if (i10 > 0) {
                this.f16147x.c(false, i10 + "s", null, false, false);
            } else {
                this.f16147x.c(false, null, null, true, true);
            }
        }
        if (i10 > 0) {
            this.f16143m = (int) (((long) this.f16143m) - j10);
            this.f16140c.c(j10);
        }
    }

    public void c(ic icVar, com.byazt.hkv.tt ttVar) {
        this.tt = icVar;
        this.f16141da = ttVar;
        this.f16146u.c(icVar);
        this.f16146u.c(this.f16141da);
        if (rl.tt(icVar)) {
            if (this.f16145t == null) {
                this.f16145t = new com.byazt.ac.ve(this.f16140c, icVar, this.ve, this.f16144n, this.f16139a, this.uj, this.sp);
            }
            com.byazt.ac.ve veVar = this.f16145t;
            this.yp = veVar;
            veVar.c(new c() { // from class: com.byazt.kcl.tt.6
                @Override // com.byazt.kcl.tt.c
                public void c() {
                    tt.this.n(false);
                }
            });
            this.f16145t.c(new InterfaceC0357tt() { // from class: com.byazt.kcl.tt.7
                @Override // com.byazt.kcl.tt.InterfaceC0357tt
                public void c() {
                    tt.this.f16140c.tt(true, true);
                }

                @Override // com.byazt.kcl.tt.InterfaceC0357tt
                public void tt() {
                    tt.this.f16140c.t();
                }

                @Override // com.byazt.kcl.tt.InterfaceC0357tt
                public n ve() {
                    return tt.this.f16147x;
                }
            });
        } else {
            this.yp = this.sl;
        }
        try {
            com.byazt.ac.c cVar = this.yp;
            if (cVar != null) {
                cVar.c(this.tt);
                this.yp.c(this.uj, this.f16140c.ic(), this.f16147x.uj());
                this.yp.c(this.f16142i.sp(), this.f16141da);
                tt();
            }
        } catch (Throwable unused) {
        }
    }

    public void c(final String str) {
        this.f16140c.nb().post(new Runnable() { // from class: com.byazt.kcl.tt.8
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                tt.this.f16146u.c(str);
            }
        });
    }

    public void c(JSONObject jSONObject) {
        com.byazt.ac.c cVar = this.yp;
        if (cVar != null) {
            cVar.c(jSONObject);
        }
    }

    public void c(com.byazt.xl.yp ypVar) {
        com.byazt.ac.tt ttVar = this.sl;
        if (ttVar == null) {
            return;
        }
        ttVar.c(ypVar);
    }
}
