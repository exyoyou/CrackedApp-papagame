package com.byazt.fcd;

import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.pu;
import com.byazt.lcf.TTBaseVideoActivity;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 66})
public class t extends c {
    public t(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
    }

    public static boolean c(ic icVar) {
        return true;
    }

    public static int tt(ic icVar) {
        return 1;
    }

    @Override // com.byazt.fcd.tt
    public boolean b() {
        return q();
    }

    @Override // com.byazt.fcd.c
    public int eo() {
        return tt(this.tt);
    }

    @Override // com.byazt.fcd.tt
    public boolean kk() {
        return !sp() || kp.ve(this.tt, sp());
    }

    @Override // com.byazt.fcd.c
    public void nu() {
        super.nu();
        this.f14070c.bm();
    }

    @Override // com.byazt.fcd.tt
    public boolean os() {
        if (!this.yp) {
            return false;
        }
        if (pu.c(this.tt) == 2 && pu.tt(this.tt) == 3) {
            return false;
        }
        return (pu.c(this.tt) == 2 && pu.tt(this.tt) == 7) ? false : true;
    }

    @Override // com.byazt.fcd.tt
    public boolean oz() {
        return kp.nu(this.tt);
    }

    @Override // com.byazt.fcd.tt
    public boolean q() {
        return true;
    }

    @Override // com.byazt.fcd.tt
    public void r() {
        if (kp.nu(this.tt)) {
            boolean z10 = !kp.ve();
            boolean zVe = kp.ve();
            this.f14070c.ve(0);
            if (yv() > ic() || this.f14081z) {
                com.byazt.fh.a.f14179c = 0;
                com.byazt.kcl.n nVar = this.rh;
                boolean z11 = this.yp;
                nVar.c(z11, z11 ? "领取成功" : "", z10 ? "跳过" : "", zVe, true);
                this.f14070c.l();
                return;
            }
            int iA = a(true);
            int iA2 = a(false);
            com.byazt.fh.a.f14179c = iA;
            boolean z12 = yv() > this.f14073h.ve() || this.f14070c.lo();
            boolean z13 = z10 && z12;
            boolean z14 = zVe && z12;
            com.byazt.kcl.n nVar2 = this.rh;
            boolean z15 = this.yp;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(iA2);
            sb2.append("s");
            sb2.append(this.yp ? "后可领取奖励" : "");
            nVar2.c(z15, sb2.toString(), z13 ? "跳过" : "", z14, z12);
            tt(iA);
        }
    }

    @Override // com.byazt.fcd.tt
    public void s() {
        this.rh.tt(this.tt.fe());
        if (a()) {
            this.f14074i.n(8);
            this.f14074i.a(8);
            this.rh.c(false);
        } else {
            this.f14074i.n(0);
            this.f14074i.a(0);
            this.rh.n(true);
        }
        this.f14070c.bm();
    }

    @Override // com.byazt.fcd.tt
    public boolean v() {
        return true;
    }

    @Override // com.byazt.fcd.tt
    public void y() {
        com.byazt.ouz.a aVar = this.qy;
        if (aVar != null) {
            ((com.byazt.nat.c) aVar.c(com.byazt.nat.c.class)).c((Object) this.f14070c);
        }
        com.byazt.ouz.n nVar = this.gu;
        if (nVar != null) {
            ((com.byazt.nat.c) nVar.c(com.byazt.nat.c.class)).c((Object) this.f14070c);
        }
    }
}
