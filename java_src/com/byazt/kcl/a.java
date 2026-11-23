package com.byazt.kcl;

import android.widget.FrameLayout;
import com.byazt.afw.nu;
import com.byazt.bzd.sl;
import com.byazt.bzd.t;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.fk.sp;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16109a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public TTBaseVideoActivity f16111da;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.jzl.a f16113m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16114n;
    public ic sl;
    public com.byazt.dh.ve sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public FrameLayout f16115t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f16116u;
    public long uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f16117x;
    public long yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.hkv.c f16118z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16112i = 210;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16110c = false;
    public boolean tt = false;
    public boolean ve = false;
    public boolean nu = false;

    public a(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f16111da = tTBaseVideoActivity;
    }

    private void sv() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null || veVar.nu() == null) {
            return;
        }
        this.f16117x = this.sp.sl();
        if (this.sp.nu().isStarted() || !this.sp.nu().isCompleted()) {
            this.sp.a();
            this.sp.i();
            this.tt = true;
        }
    }

    public long a() {
        return this.f16117x;
    }

    public void bx() {
        try {
            com.byazt.dh.ve veVar = this.sp;
            if (veVar instanceof com.byazt.zd.c) {
                ((com.byazt.zd.c) veVar).lo();
            }
        } catch (Throwable unused) {
        }
    }

    public void c(ic icVar) {
        this.sl = icVar;
    }

    public com.byazt.dh.ve cu() {
        return this.sp;
    }

    public com.byazt.zd.c d() {
        return (com.byazt.zd.c) cu();
    }

    public void da() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            veVar.tt();
        }
    }

    public boolean eo() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null) {
            return false;
        }
        return veVar.ve();
    }

    public void gr() {
        sp();
    }

    public long gt() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.yp();
        }
        return 0L;
    }

    public boolean gu() {
        com.byazt.dh.ve veVar = this.sp;
        return veVar != null && veVar.nu() == null;
    }

    public long h() {
        if (sl()) {
            double dA = xd.nu(this.sl).a() * 1000.0d * ((double) d().sv());
            long j10 = this.uj;
            if (dA - j10 > 210.0d) {
                long j11 = (long) (j10 + dA);
                this.yp = j11;
                return j11;
            }
        }
        return Math.max(this.uj, this.yp);
    }

    public void i() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            veVar.da();
        }
    }

    public long m() {
        com.byazt.dh.ve veVar = this.sp;
        return veVar != null ? veVar.sl() : this.f16117x;
    }

    public int md() {
        return this.f16114n;
    }

    public void my() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null || veVar.nu() == null) {
            return;
        }
        this.sp.nu().stop();
    }

    public boolean n() {
        return this.tt;
    }

    public boolean nb() {
        return this.ve;
    }

    public long nu() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.t();
        }
        return 0L;
    }

    public boolean or() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null || veVar.nu() == null) {
            return false;
        }
        return this.sp.nu().isFirstFrameSuccess();
    }

    public double p() {
        double dSp = xd.sp(this.sl);
        return (xd.z(this.sl) == null || this.sl.pb() <= 0 || dSp <= ((double) this.sl.pb())) ? dSp : this.sl.pb();
    }

    public void pf() {
        this.ve = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void qp() {
        boolean zC;
        nu.c cVar = new nu.c();
        cVar.tt(nu());
        cVar.n(3);
        cVar.a(rh());
        com.byazt.dh.ve veVar = this.sp;
        if (veVar instanceof com.byazt.zd.c) {
            ((com.byazt.zd.c) veVar).rl.ve(32);
            zC = ((com.byazt.zd.c) this.sp).rl.c(2);
        } else {
            zC = 0;
        }
        com.byazt.sw.uj.c(zb(), cVar, this.f16111da.x(), !zC);
    }

    public boolean qy() {
        return this.sp != null;
    }

    public int rh() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.u();
        }
        return 0;
    }

    public boolean rl() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            if (veVar.nu() != null) {
                sp spVarNu = this.sp.nu();
                if (spVarNu.isPaused() || spVarNu.isReleased()) {
                    ((com.byazt.zd.c) this.sp).ic();
                    return true;
                }
            } else if (n()) {
                c(false);
                ((com.byazt.zd.c) this.sp).ic();
                return true;
            }
        }
        return false;
    }

    public boolean sl() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.uj();
        }
        return false;
    }

    public void sp() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null) {
            return;
        }
        veVar.i();
        this.sp = null;
    }

    public boolean t() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.n();
        }
        return false;
    }

    public boolean tt() {
        com.byazt.dh.ve veVar = this.sp;
        return (veVar == null || veVar.nu() == null || !this.sp.nu().isPlaying()) ? false : true;
    }

    public boolean u() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.my();
        }
        return false;
    }

    public boolean uj() {
        com.byazt.dh.ve veVar = this.sp;
        return veVar != null && veVar.qy();
    }

    public boolean ve() {
        com.byazt.dh.ve veVar = this.sp;
        return (veVar == null || veVar.nu() == null || !this.sp.nu().isPaused()) ? false : true;
    }

    public void x() {
        if (this.sp != null && tt()) {
            this.sp.tt(true);
        }
    }

    public long yp() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.yp();
        }
        return 0L;
    }

    public void yv() {
        try {
            this.f16111da.z(1);
        } catch (Throwable th) {
            m.uj("TTBaseVideoActivity", "onContinue throw Exception :" + th.getMessage());
        }
    }

    public int z() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.z();
        }
        return 0;
    }

    public com.byazt.dh.tt zb() {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            return veVar.rh();
        }
        return null;
    }

    public void zm() {
        try {
            this.f16111da.yp(1);
        } catch (Throwable th) {
            m.uj("TTBaseVideoActivity", "onPause throw Exception :" + th.getMessage());
        }
    }

    public void c(FrameLayout frameLayout, String str, boolean z10) {
        if (this.nu) {
            return;
        }
        this.nu = true;
        this.f16115t = frameLayout;
        this.f16116u = str;
        this.f16109a = z10;
        if (z10) {
            this.sp = new com.byazt.xh.tt(this.f16111da, frameLayout, this.sl, this.f16118z);
        } else {
            this.sp = new com.byazt.xh.c(this.f16111da, frameLayout, this.sl, this.f16118z);
        }
        this.f16114n = (int) p();
    }

    public void tt(boolean z10) {
        int i10;
        if (this.sp == null) {
            return;
        }
        if (z10) {
            i10 = or() ? 2 : 4;
        } else {
            i10 = or() ? 0 : 1;
        }
        nu.c cVar = new nu.c();
        cVar.tt(nu());
        cVar.ve(1 ^ (or() ? 1 : 0));
        cVar.uj(i10);
        com.byazt.dh.ve veVar = this.sp;
        if (!(veVar instanceof com.byazt.zd.c) || ((com.byazt.zd.c) veVar).rl.c(128)) {
            return;
        }
        ((com.byazt.zd.c) this.sp).rl.ve(128);
        com.byazt.sw.uj.ve(this.sp.rh(), cVar);
    }

    public void ve(boolean z10) {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            veVar.tt(z10);
        }
    }

    public boolean c() {
        com.byazt.dh.ve veVar = this.sp;
        return (veVar == null || veVar.nu() == null || !this.sp.nu().isCompleted()) ? false : true;
    }

    public void c(boolean z10) {
        this.tt = z10;
    }

    public void c(long j10) {
        this.f16117x = j10;
    }

    public void c(long j10, boolean z10) {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null || this.ve) {
            return;
        }
        if (j10 != 0) {
            veVar.c(j10);
            this.sp.tt(z10);
        } else {
            veVar.x();
        }
    }

    public void tt(Map<String, Object> map) {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            veVar.tt(map);
        }
    }

    public void tt(long j10) {
        this.uj = j10;
        if (!t() && sl()) {
            this.f16114n = (int) Math.max(0L, Math.round(p() - ((this.uj + (xd.nu(this.sl).a() * 1000.0d)) / 1000.0d)));
        } else {
            this.f16114n = Math.max(0, (int) (p() - (this.uj / 1000)));
        }
    }

    public void c(Map<String, Object> map) {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar == null || this.ve) {
            return;
        }
        veVar.c(map);
    }

    public void c(com.byazt.zd.c.InterfaceC0501c interfaceC0501c) {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar instanceof com.byazt.zd.c) {
            ((com.byazt.zd.c) veVar).c(interfaceC0501c);
        }
    }

    public boolean c(long j10, boolean z10, int i10) {
        if (this.sp == null || xd.z(this.sl) == null) {
            return false;
        }
        com.byazt.jzl.a aVarC = this.f16113m;
        if (aVarC == null) {
            File file = new File(sl.c(this.sl.xx()).getRewardFullCacheDir(), xd.x(this.sl));
            if (file.exists() && file.length() > 0) {
                this.f16110c = true;
            }
            aVarC = xd.c(1, this.sl);
            aVarC.setCid(this.sl.uj());
            FrameLayout frameLayout = this.f16115t;
            aVarC.setWidth(frameLayout == null ? 100 : frameLayout.getWidth());
            FrameLayout frameLayout2 = this.f16115t;
            aVarC.setHeight(frameLayout2 != null ? frameLayout2.getHeight() : 100);
            aVarC.setLogExtra(this.sl.w_());
            aVarC.setCurrent(j10);
            aVarC.setQuiet(z10);
            if (t.c(this.sl)) {
                aVarC.setAudio(true);
            }
        }
        return this.sp.c(aVarC);
    }

    public void c(boolean z10, TTBaseVideoActivity tTBaseVideoActivity) {
        boolean zUj;
        long jN;
        boolean zA;
        if (z10 || this.f16111da.kp()) {
            return;
        }
        if (ve()) {
            com.byazt.zd.tt ttVarQp = this.f16111da.to().qp();
            if (ttVarQp != null) {
                zUj = ttVarQp.uj();
                jN = ttVarQp.n();
                zA = ttVarQp.a();
            } else {
                zUj = false;
                jN = 0;
                zA = false;
            }
            if (zUj) {
                sv();
                c(tTBaseVideoActivity);
            } else {
                c(jN, zA);
            }
            m.c("TTBaseVideoActivity", "resumeOrRestartVideo: continue play");
            return;
        }
        sv();
        c(tTBaseVideoActivity);
        m.c("TTBaseVideoActivity", "resumeOrRestartVideo: recreate video player & exec play");
    }

    public void c(TTBaseVideoActivity tTBaseVideoActivity) {
        if (!rl() || tTBaseVideoActivity == null) {
            return;
        }
        tTBaseVideoActivity.tt(a(), true);
    }

    public void c(int i10) {
        com.byazt.dh.ve veVar = this.sp;
        if (veVar != null) {
            veVar.c(i10);
        }
    }

    public void c(ic icVar, com.byazt.dh.ve veVar, com.byazt.jzl.a aVar) {
        this.sl = icVar;
        this.sp = veVar;
        this.f16113m = aVar;
    }

    public void c(com.byazt.hkv.c cVar) {
        this.f16118z = cVar;
    }

    public void c(float f10) {
        if (this.sp.nu() != null) {
            this.sp.nu().setPlaySpeedRatio(f10);
        }
    }
}
