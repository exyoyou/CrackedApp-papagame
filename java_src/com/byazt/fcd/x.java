package com.byazt.fcd;

import com.byazt.ete.b;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.lcf.TTBaseVideoActivity;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 71})
public class x extends c {
    public final com.byazt.zd.tt bx;
    public final AtomicBoolean cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicLong f14112d;
    public final int eo;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final AtomicBoolean f14113nb;
    public final AtomicBoolean or;
    public com.byazt.yqb.c pf;
    public final AtomicBoolean qp;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public long f14114zb;

    public x(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
        this.eo = 4;
        this.f14114zb = 4L;
        this.or = new AtomicBoolean(false);
        this.cu = new AtomicBoolean(false);
        this.qp = new AtomicBoolean(false);
        this.f14113nb = new AtomicBoolean(false);
        this.f14112d = new AtomicLong();
        this.bx = new com.byazt.zd.tt() { // from class: com.byazt.fcd.x.1
            @Override // com.byazt.zd.tt
            public boolean a() {
                return x.this.rl.a();
            }

            @Override // com.byazt.zd.tt
            public boolean c() {
                if (!x.this.qp.get() && !b.tt(x.this.tt)) {
                    return false;
                }
                x.this.dz();
                return true;
            }

            @Override // com.byazt.zd.tt
            public void da() {
                TTBaseVideoActivity tTBaseVideoActivity2 = x.this.f14070c;
                if (tTBaseVideoActivity2 != null) {
                    tTBaseVideoActivity2.sl();
                }
            }

            @Override // com.byazt.zd.tt
            public void i() {
                x.this.f14070c.aw();
            }

            @Override // com.byazt.zd.tt
            public long n() {
                return x.this.f14112d.get();
            }

            @Override // com.byazt.zd.tt
            public int sl() {
                return x.this.qp.get() ? 1 : 2;
            }

            @Override // com.byazt.zd.tt
            public Map<String, Object> sp() {
                HashMap map = new HashMap();
                map.put("refer", "in_video");
                return map;
            }

            @Override // com.byazt.zd.tt
            public void tt() {
                x.this.qp.set(false);
                x.this.f14074i.n(8);
                if (!x.this.sp()) {
                    x.this.f14070c.aw();
                }
                x.this.f14070c.gu();
            }

            @Override // com.byazt.zd.tt
            public boolean uj() {
                return x.this.f14113nb.get();
            }

            @Override // com.byazt.zd.tt
            public void ve() {
                x.this.cu();
                x.this.f14113nb.set(true);
                x.this.f14070c.t();
            }

            @Override // com.byazt.zd.tt
            public void x() {
                x.this.ma();
            }

            @Override // com.byazt.zd.tt
            public void c(long j10, long j11) {
                x.this.my.tt(j10);
                x.this.rl();
                x.this.f14112d.set(j10);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dz() {
        this.f14074i.n(0);
        this.f14070c.sv();
        this.pf.ve();
        this.f14070c.qy();
    }

    private void f() {
        if (this.or.get()) {
            j();
            ir();
        }
    }

    private void ir() {
        if (this.cu.get()) {
            long j10 = this.f14114zb - 1;
            this.f14114zb = j10;
            if (j10 != 0) {
                if (j10 > 0) {
                    this.pf.c(j10);
                }
            } else {
                this.pf.c(j10);
                this.qp.set(true);
                if (sp()) {
                    this.pf.c(this.gu);
                } else {
                    this.pf.c(this.f14080x);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ma() {
        this.or.set(false);
    }

    public static int tt(ic icVar) {
        return 10;
    }

    private void yf() {
        this.cu.set(true);
        this.pf.c();
    }

    @Override // com.byazt.fcd.tt
    public boolean b() {
        return true;
    }

    @Override // com.byazt.fcd.c
    public void cu() {
        super.cu();
        this.rh.c(false, "奖励已领取", "跳过", false, true);
    }

    @Override // com.byazt.fcd.c
    public int eo() {
        return tt(this.tt);
    }

    public void j() {
        if (this.cu.get()) {
            return;
        }
        int iH = (int) this.my.h();
        int iGt = (int) this.my.gt();
        int iVe = b.ve(this.tt);
        if (iVe == 1) {
            c(b.uj(this.tt), iGt, 1000 * ((long) this.f14073h.n()), false);
        } else if (iVe == 2) {
            c((int) (iGt * 0.001f * 0.01f * b.uj(this.tt)), iGt, iH, false);
        } else {
            if (iVe != 3) {
                return;
            }
            c(pf(), iGt, iH, true);
        }
    }

    @Override // com.byazt.fcd.tt
    public boolean kk() {
        return true;
    }

    @Override // com.byazt.fcd.tt
    public boolean os() {
        return true;
    }

    @Override // com.byazt.fcd.tt
    public boolean oz() {
        return kp.nu(this.tt);
    }

    @Override // com.byazt.fcd.tt
    public boolean q() {
        return true;
    }

    @Override // com.byazt.fcd.c
    public com.byazt.zd.tt qp() {
        return this.bx;
    }

    @Override // com.byazt.fcd.tt
    public void r() {
        f();
        if (kp.nu(this.tt)) {
            this.f14070c.ve(0);
            if (yv() > ic() || this.f14081z) {
                com.byazt.fh.a.f14179c = 0;
            }
            tt(a(true));
            com.byazt.fh.a.f14179c = sv();
        }
    }

    @Override // com.byazt.fcd.c
    public void rl() {
        super.rl();
        this.f14075m = false;
        boolean z10 = ((int) (this.my.h() / 1000)) >= this.f14073h.ve() || this.f14070c.lo();
        if (this.my.eo()) {
            this.rh.c(false, null, "跳过", false, true);
            return;
        }
        int iMd = this.my.md();
        if (this.my.c()) {
            return;
        }
        this.rh.c(false, iMd + "s", z10 ? "跳过" : "", false, z10);
    }

    @Override // com.byazt.fcd.tt
    public void s() {
        this.f14074i.n(8);
        this.f14074i.a(0);
        this.rh.n(true);
        this.rh.ve(true);
        this.rh.tt(true);
        this.rh.c(true);
        this.f14070c.bm();
    }

    @Override // com.byazt.fcd.tt
    public boolean tx() {
        return true;
    }

    @Override // com.byazt.fcd.tt
    public void y() {
        com.byazt.ouz.n nVar = this.gu;
        if (nVar != null) {
            ((com.byazt.nat.c) nVar.c(com.byazt.nat.c.class)).c(this.bx);
            ((com.byazt.vis.c) this.gu.c(com.byazt.vis.c.class)).c(this.bx);
        }
        com.byazt.hkv.n nVar2 = this.f14080x;
        if (nVar2 != null) {
            ((com.byazt.nat.c) nVar2.c(com.byazt.nat.c.class)).c(this.bx);
            ((com.byazt.vis.c) this.f14080x.c(com.byazt.vis.c.class)).c(this.bx);
        }
        com.byazt.yqb.c cVar = new com.byazt.yqb.c(this.f14070c, this.tt, this.bx);
        this.pf = cVar;
        cVar.c(this.f14070c.or().getSceneFrameContainer(), this.f14070c.or().getSceneFrame());
        this.or.set(b.ve(this.tt) != 0);
        if (this.or.get()) {
            this.f14075m = true;
        }
    }

    @Override // com.byazt.fcd.c
    public void zm() {
        super.zm();
        this.rh.c(false, "奖励已领取", "跳过", false, true);
    }

    public static boolean c(ic icVar) {
        return b.c(icVar);
    }

    private void c(int i10, long j10, long j11, boolean z10) {
        if (z10) {
            if (i10 <= 3) {
                yf();
            }
        } else if (i10 > 0) {
            long j12 = ((long) i10) * 1000;
            if (j12 > j10) {
                return;
            }
            long j13 = j12 - j11;
            if (j13 <= 0 || Math.abs(j13) > 3200) {
                return;
            }
            yf();
        }
    }
}
