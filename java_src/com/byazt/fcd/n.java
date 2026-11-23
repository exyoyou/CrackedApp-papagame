package com.byazt.fcd;

import android.view.View;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.xd;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 46})
public class n extends c {
    public n(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
    }

    public static int tt(ic icVar) {
        return 3;
    }

    @Override // com.byazt.fcd.tt
    public boolean b() {
        return false;
    }

    @Override // com.byazt.fcd.c
    public com.byazt.dqg.tt c(boolean z10) {
        if (this.uj != 100.0f) {
            this.f14074i = new com.byazt.dqg.sp(this.f14070c, this.tt, z10);
        } else {
            this.f14074i = new com.byazt.dqg.a(this.f14070c, this.tt, z10);
        }
        return this.f14074i;
    }

    @Override // com.byazt.fcd.c
    public int eo() {
        return tt(this.tt);
    }

    @Override // com.byazt.fcd.c
    public View i() {
        if (this.uj != 100.0f) {
            return kp();
        }
        if (this.ve == 2) {
            int iId = this.tt.id();
            if (iId != 3) {
                return iId != 33 ? com.byazt.vfu.a.my(this.f14070c) : com.byazt.vfu.a.rh(this.f14070c);
            }
            return com.byazt.vfu.a.nu(this.f14070c);
        }
        int iId2 = this.tt.id();
        if (iId2 != 3) {
            return iId2 != 33 ? com.byazt.vfu.a.qy(this.f14070c) : com.byazt.vfu.a.rl(this.f14070c);
        }
        return com.byazt.vfu.a.gt(this.f14070c);
    }

    @Override // com.byazt.fcd.c
    public int ic() {
        if (x(false)) {
            return (int) Math.min(kp.c() / 1000, (int) xd.sp(this.tt));
        }
        return kp.nu(this.tt) ? super.ic() : (int) xd.sp(this.tt);
    }

    @Override // com.byazt.fcd.tt
    public boolean kk() {
        if (!gt.tt().ys()) {
            return kp.ve(this.tt, sp()) && xd.t(this.tt);
        }
        if (this.tt.fr() != 100.0f) {
            return ic.ve(this.tt) || com.byazt.bzd.t.c(this.tt);
        }
        if (this.f14072da.a()) {
            return this.f14072da.sl();
        }
        return true;
    }

    @Override // com.byazt.fcd.tt
    public boolean os() {
        return this.yp;
    }

    @Override // com.byazt.fcd.tt
    public boolean oz() {
        if (!kp.ve(this.tt, sp())) {
            return false;
        }
        if (kp.nu(this.tt)) {
            return true;
        }
        return (gt.tt().ys() || kk()) ? false : true;
    }

    @Override // com.byazt.fcd.tt
    public boolean q() {
        return false;
    }

    @Override // com.byazt.fcd.tt
    public void r() {
        super.r();
        if (oz()) {
            int iP = p();
            int iYv = yv();
            if (!gt.tt().ys() && !kk() && kp.ve(this.tt, sp()) && iP > xd.sp(this.tt)) {
                this.f14070c.kk();
            }
            this.f14070c.ve(0);
            if (x(false)) {
                if (this.gt.cu()) {
                    return;
                }
                if (iYv > ic() || this.f14081z) {
                    com.byazt.fh.a.f14179c = 0;
                    this.f14070c.bm();
                    if (this.f14072da == null || gr() != 7) {
                        return;
                    }
                    this.f14072da.c("0", iYv, 0, false);
                    return;
                }
                int iA = a(true);
                int iA2 = a(false);
                com.byazt.fh.a.f14179c = iA;
                this.f14070c.bm();
                tt(iA);
                if (this.f14072da == null || gr() != 7) {
                    return;
                }
                this.f14072da.c(String.valueOf(iA2), iYv, 0, false);
                return;
            }
            if (iYv > ic() || this.f14081z) {
                this.f14070c.l();
                com.byazt.fh.a.f14179c = 0;
                com.byazt.kcl.n nVar = this.rh;
                boolean z10 = this.yp;
                nVar.c(z10, z10 ? "领取成功" : "", null, true, true);
                if (this.f14072da == null || gr() != 7) {
                    return;
                }
                this.f14072da.c("0", iYv, 0, false);
                return;
            }
            int iA3 = a(true);
            int iA4 = a(false);
            com.byazt.fh.a.f14179c = iA3;
            boolean z11 = iYv > this.f14073h.ve() || this.f14070c.lo();
            com.byazt.kcl.n nVar2 = this.rh;
            boolean z12 = this.yp;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(iA4);
            sb2.append("s");
            sb2.append(this.yp ? "后可领取奖励" : "");
            nVar2.c(z12, sb2.toString(), null, z11, z11);
            tt(iA3);
            if (this.f14072da == null || gr() != 7) {
                return;
            }
            this.f14072da.c(String.valueOf(iA4), iYv, 0, false);
        }
    }

    @Override // com.byazt.fcd.tt
    public void s() {
        this.f14074i.n(8);
        this.f14074i.a(8);
        this.rh.n(kk());
        this.rh.tt(this.tt.fe());
        this.f14070c.bm();
    }

    @Override // com.byazt.fcd.tt
    public boolean v() {
        return true;
    }

    @Override // com.byazt.fcd.tt
    public boolean x(boolean z10) {
        if (gt.tt().ys()) {
            return false;
        }
        return (z10 || !kp.nu(this.tt)) && !kk() && oz();
    }

    public static boolean c(ic icVar) {
        return (icVar == null || ic.ve(icVar)) ? false : true;
    }
}
