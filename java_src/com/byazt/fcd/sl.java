package com.byazt.fcd;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aas.rl;
import com.byazt.ete.ic;
import com.byazt.ete.my;
import com.byazt.lcf.TTBaseVideoActivity;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 158})
public class sl extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14094d;
    public int eo;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public com.byazt.ddx.sp f14095zb;

    public sl(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
        this.f14094d = 0;
        this.eo = 0;
        com.byazt.ddx.sp spVar = new com.byazt.ddx.sp(icVar);
        this.f14095zb = spVar;
        spVar.c(true);
    }

    public static boolean c(ic icVar) {
        return icVar.tx() == 1 && my.c(icVar);
    }

    @Override // com.byazt.fcd.c
    public boolean a() {
        return false;
    }

    @Override // com.byazt.fcd.tt
    public boolean b() {
        return false;
    }

    @Override // com.byazt.fcd.c
    public int bx() {
        if ((this.gt.cu() && my.c(this.tt)) || this.f14094d == 0) {
            return 0;
        }
        if (com.byazt.xs.da.n(this.tt) || com.byazt.xs.da.uj(this.tt)) {
            return Math.max(this.f14094d - yv(), 0);
        }
        return Math.max(((int) Math.min((this.f14094d * this.tt.cs()) / 100.0f, 27.0f)) - yv(), 0);
    }

    @Override // com.byazt.fcd.c
    public int eo() {
        return tt(this.tt);
    }

    @Override // com.byazt.fcd.c
    public void gu() {
        if (com.byazt.xs.da.uj(this.tt) && ((com.byazt.dqg.c) this.f14074i).ve()) {
            ((com.byazt.dqg.c) this.f14074i).c(false);
        }
    }

    @Override // com.byazt.fcd.c
    public View i() {
        FrameLayout frameLayout = new FrameLayout(this.f14070c);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.byazt.fcd.tt
    public boolean kk() {
        return false;
    }

    @Override // com.byazt.fcd.c
    public void m() {
        super.m();
        com.byazt.dqg.tt ttVar = this.f14074i;
        if ((ttVar instanceof com.byazt.dqg.c) && ((com.byazt.dqg.c) ttVar).a()) {
            this.f14095zb.uj();
        }
        this.f14074i.da();
    }

    @Override // com.byazt.fcd.c
    public void n(boolean z10) {
        super.n(z10);
        if (com.byazt.xs.da.uj(this.tt)) {
            ((com.byazt.dqg.c) this.f14074i).tt(z10);
        }
    }

    @Override // com.byazt.fcd.c
    public boolean or() {
        if (pf() > 0) {
            return false;
        }
        if (!com.byazt.xs.da.n(this.tt)) {
            return true;
        }
        ((com.byazt.dqg.c) this.f14074i).c(0);
        return true;
    }

    @Override // com.byazt.fcd.tt
    public boolean q() {
        return false;
    }

    @Override // com.byazt.fcd.tt
    public void r() {
        int iYv = yv();
        int iMax = Math.max(0, this.f14094d - iYv);
        if (!this.gt.cu()) {
            int i10 = this.f14094d;
            if (iYv >= i10) {
                if (com.byazt.xs.da.ve(this.tt)) {
                    com.byazt.kcl.n nVar = this.rh;
                    boolean z10 = this.yp;
                    nVar.c(z10, z10 ? "领取成功" : "", null, true, true);
                } else {
                    this.rh.c(false, null, null, true, true);
                }
                this.f14070c.t();
            } else if (this.eo >= i10) {
                this.rh.c(false, String.valueOf(iMax), null, false, false);
            } else if (com.byazt.xs.da.ve(this.tt)) {
                com.byazt.kcl.n nVar2 = this.rh;
                boolean z11 = this.yp;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(iMax);
                sb2.append("s");
                sb2.append(this.yp ? "后可领取奖励" : "");
                nVar2.c(z11, sb2.toString(), null, this.eo <= iYv, true);
            } else if (com.byazt.xs.da.n(this.tt) || com.byazt.xs.da.uj(this.tt)) {
                if (iYv >= this.eo) {
                    this.rh.c(false, null, null, true, true);
                }
            } else if (iYv >= this.eo) {
                this.rh.c(false, String.valueOf(iMax), "跳过", false, true);
            } else {
                this.rh.c(false, String.valueOf(iMax), (this.eo - iYv) + "s后可跳过", false, false);
            }
        }
        this.f14070c.ve(0);
        if (com.byazt.xs.da.n(this.tt)) {
            ((com.byazt.dqg.c) this.f14074i).c(iMax);
        }
        if (iMax == 0) {
            com.byazt.dqg.tt ttVar = this.f14074i;
            if (ttVar instanceof com.byazt.dqg.c) {
                ((com.byazt.dqg.c) ttVar).sp();
            }
        }
    }

    @Override // com.byazt.fcd.tt
    public void s() {
        this.f14074i.n(0);
        this.rh.c(true);
        if (com.byazt.xs.da.uj(this.tt)) {
            this.rh.n(true);
        }
        if (com.byazt.xs.da.n(this.tt) || com.byazt.xs.da.uj(this.tt)) {
            this.rh.tt(false);
        } else {
            this.rh.tt(this.tt.fe());
        }
        if (!com.byazt.xs.da.ve(this.tt)) {
            this.rh.n(false);
            this.rh.c(false, null, null, true, true);
            return;
        }
        this.rh.ve(true);
        this.rh.n(true);
        com.byazt.kcl.n nVar = this.rh;
        boolean z10 = this.yp;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(pf());
        sb2.append("s");
        sb2.append(this.yp ? "后可领取奖励" : "");
        nVar.c(z10, sb2.toString(), null, true, true);
    }

    @Override // com.byazt.fcd.c
    public int sp(boolean z10) {
        if ((this.gt.cu() && my.c(this.tt)) || this.f14094d == 0) {
            return 0;
        }
        return (com.byazt.xs.da.n(this.tt) || com.byazt.xs.da.uj(this.tt)) ? Math.max(this.f14094d - yv(), 0) : Math.max(Math.min(this.f14094d, 27) - yv(), 0);
    }

    @Override // com.byazt.fcd.c
    public void tt(boolean z10) {
        super.tt(z10);
        this.f14095zb.ve();
        com.byazt.dqg.tt ttVar = this.f14074i;
        if (ttVar instanceof com.byazt.dqg.c) {
            ((com.byazt.dqg.c) ttVar).i();
        }
    }

    @Override // com.byazt.fcd.c
    public void ve(boolean z10) {
        super.ve(z10);
        com.byazt.dqg.tt ttVar = this.f14074i;
        if (ttVar instanceof com.byazt.dqg.c) {
            if (((com.byazt.dqg.c) ttVar).a()) {
                this.f14095zb.c(((com.byazt.dqg.c) this.f14074i).n().get());
            }
            ((com.byazt.dqg.c) this.f14074i).x();
        }
    }

    @Override // com.byazt.fcd.c
    public void x() {
        JSONObject jSONObjectVe;
        super.x();
        com.byazt.ab.tt.c().c(this.tt);
        if (com.byazt.xs.da.n(this.tt) || com.byazt.xs.da.uj(this.tt)) {
            com.byazt.lo.c cVarOs = this.tt.os();
            this.f14094d = 30;
            if (cVarOs != null && (jSONObjectVe = cVarOs.ve()) != null) {
                this.f14094d = jSONObjectVe.optInt("reward_time", 30);
            }
        } else {
            this.f14094d = rl.n(this.tt);
        }
        this.eo = rl.a(this.tt);
    }

    @Override // com.byazt.fcd.c
    public void yp() {
        super.yp();
    }

    @Override // com.byazt.fcd.c
    public com.byazt.dqg.tt c(boolean z10) {
        com.byazt.dqg.c cVar = new com.byazt.dqg.c(this.f14070c, this.tt, z10, this.f14095zb, this.rh);
        this.f14074i = cVar;
        return cVar;
    }

    @Override // com.byazt.fcd.c
    public com.byazt.qq.tt.c c(final ic icVar, final com.byazt.qq.da daVar) {
        this.f14070c.sv();
        this.f14070c.bx();
        com.byazt.qq.x xVar = new com.byazt.qq.x(this.f14070c, icVar);
        xVar.c(this.gt.rl());
        xVar.c(sv());
        return xVar.tt(new com.byazt.qq.da() { // from class: com.byazt.fcd.sl.1
            @Override // com.byazt.qq.da
            public void c() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.c();
                }
                if (com.byazt.xs.da.uj(icVar) && ((com.byazt.dqg.c) sl.this.f14074i).uj()) {
                    return;
                }
                sl.this.f14070c.aw();
            }

            @Override // com.byazt.qq.da
            public void tt() {
                com.byazt.qq.da daVar2 = daVar;
                if (daVar2 != null) {
                    daVar2.tt();
                }
            }
        });
    }

    public static int tt(ic icVar) {
        return com.byazt.xs.da.ve(icVar) ? 6 : 7;
    }

    @Override // com.byazt.fcd.c, com.byazt.fcd.tt
    public void ve() {
        this.rh.c(4);
        this.f14074i.ve(true);
        if (com.byazt.xs.da.n(this.tt) || com.byazt.xs.da.uj(this.tt)) {
            ((com.byazt.dqg.c) this.f14074i).c(Math.max(0, this.f14094d - yv()));
        }
        this.f14070c.tt(true, true);
    }
}
