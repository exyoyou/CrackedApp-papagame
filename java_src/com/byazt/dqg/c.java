package com.byazt.dqg;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.z;
import com.byazt.omf.rh;
import com.byazt.rpt.PlayableEndcardFrameLayout;
import com.byazt.xzj.RewardLpBottomView;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 20})
public class c extends tt {
    public com.byazt.kcl.n gr;
    public String gt;
    public AtomicBoolean gu;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.lo.uj f13088m;
    public AtomicBoolean my;
    public com.byazt.qp.c nu;
    public AtomicBoolean qy;
    public com.byazt.lo.tt rh;
    public RewardLpBottomView rl;
    public com.byazt.seg.c yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.ddx.sp f13089z;
    public boolean zm;

    public c(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, boolean z10, com.byazt.ddx.sp spVar, com.byazt.kcl.n nVar) {
        super(tTBaseVideoActivity, icVar, z10);
        this.yp = icVar.v();
        this.f13089z = spVar;
        this.tt.sp(0);
        this.my = new AtomicBoolean();
        this.qy = new AtomicBoolean();
        this.gu = new AtomicBoolean();
        this.gr = nVar;
    }

    private ViewGroup gt() {
        if (this.sp == null) {
            return null;
        }
        PlayableEndcardFrameLayout playableEndcardFrameLayout = new PlayableEndcardFrameLayout(this.tt);
        this.sp.addView(playableEndcardFrameLayout);
        this.rl = new RewardLpBottomView(this.tt);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.sp.addView(this.rl, layoutParams);
        this.rl.c(this.ve, this.gt);
        playableEndcardFrameLayout.c(new PlayableEndcardFrameLayout.c() { // from class: com.byazt.dqg.c.9
            @Override // com.byazt.rpt.PlayableEndcardFrameLayout.c
            public void c() {
                if (c.this.rl != null) {
                    c.this.rl.tt();
                }
            }
        });
        return playableEndcardFrameLayout;
    }

    private void my() {
        com.byazt.qp.c cVar = new com.byazt.qp.c(this.tt, gt(), this.yp, this.ve);
        this.nu = cVar;
        cVar.c(this.tt.ic());
        this.nu.c(new com.byazt.qj.c() { // from class: com.byazt.dqg.c.8
            @Override // com.byazt.qj.c
            public void c(View view) {
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.dqg.c.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.tt.sp(8);
                        c.this.my.set(true);
                        if (c.this.rl != null) {
                            c.this.rl.c();
                        }
                    }
                });
            }

            @Override // com.byazt.qj.c
            public void c(int i10) {
                rh.a().post(new Runnable() { // from class: com.byazt.dqg.c.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.tt.sp(8);
                        c.this.tt.rh();
                    }
                });
                c.this.my.set(false);
            }
        });
        this.nu.c();
    }

    private void nu() {
        com.byazt.lo.uj ujVar = new com.byazt.lo.uj(this.tt, this.sp, this.f13089z, this.ve, this.gt, nb.uj(this.f13122c));
        this.f13088m = ujVar;
        ujVar.tt(true);
        this.f13088m.c(new com.byazt.qj.c() { // from class: com.byazt.dqg.c.2
            @Override // com.byazt.qj.c
            public void c(View view) {
                c.this.tt.sp(8);
                c.this.my.set(true);
            }

            @Override // com.byazt.qj.c
            public void c(int i10) {
                rh.a().post(new Runnable() { // from class: com.byazt.dqg.c.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.tt.sp(8);
                        c.this.tt.rh();
                    }
                });
                c.this.my.set(false);
            }
        });
        this.f13088m.t();
    }

    private void rh() {
        FrameLayout frameLayout = new FrameLayout(this.tt);
        this.sp.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        com.byazt.lo.tt ttVar = new com.byazt.lo.tt(this.tt, frameLayout, this.f13089z, this.ve, this.gt, nb.uj(this.f13122c));
        this.rh = ttVar;
        ttVar.tt(true);
        this.rh.c(new com.byazt.ux.tt() { // from class: com.byazt.dqg.c.3
            @Override // com.byazt.ux.tt
            public void c() {
                c.this.tt.sv();
            }

            @Override // com.byazt.ux.tt
            public void tt() {
                c.this.tt.aw();
                c.this.qy.set(true);
                c.this.rh.my();
            }
        });
        this.rh.c(new com.byazt.qj.c() { // from class: com.byazt.dqg.c.4
            @Override // com.byazt.qj.c
            public void c(View view) {
                c.this.tt.sp(8);
                c.this.my.set(true);
            }

            @Override // com.byazt.qj.c
            public void c(int i10) {
                rh.a().post(new Runnable() { // from class: com.byazt.dqg.c.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.tt.sp(8);
                        c.this.rh.m();
                        c.this.rh.c("\"暂无更多内容，奖励已发放\"");
                        c.this.tt.uj(0);
                    }
                });
                c.this.my.set(false);
            }
        });
        this.rh.c(new com.byazt.ux.c.InterfaceC0460c() { // from class: com.byazt.dqg.c.5
            @Override // com.byazt.ux.c.InterfaceC0460c
            public void c() {
                rh.a().post(new Runnable() { // from class: com.byazt.dqg.c.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (c.this.tt.tk()) {
                            c.this.rh.c("\"暂无更多内容，奖励已发放\"");
                        } else {
                            c.this.rh.c(String.format("\"暂无更多内容，继续浏览%1$s秒可得奖励\"", Integer.valueOf(c.this.tt.to().pf())));
                        }
                    }
                });
            }
        });
        this.rh.t();
        com.byazt.omf.x.m().ve().ve(new com.byazt.aas.c.tt() { // from class: com.byazt.dqg.c.6
            @Override // com.byazt.aas.c.tt
            public void onAppBackground() {
            }

            @Override // com.byazt.aas.c.tt
            public void onAppExit() {
            }

            @Override // com.byazt.aas.c.tt
            public void onAppForeground() {
                if (c.this.qy.get() || !c.this.rh.u()) {
                    c.this.gu.set(false);
                } else {
                    c.this.gu.set(true);
                }
            }

            @Override // com.byazt.aas.c.tt
            public void onAppStart() {
            }
        });
        if (TextUtils.equals(this.yp.c(), "3")) {
            return;
        }
        tt();
    }

    @Override // com.byazt.dqg.tt
    public void da() {
        com.byazt.qp.c cVar = this.nu;
        if (cVar != null) {
            cVar.tt();
        }
        com.byazt.lo.tt ttVar = this.rh;
        if (ttVar != null) {
            ttVar.z();
        }
        RewardLpBottomView rewardLpBottomView = this.rl;
        if (rewardLpBottomView != null) {
            rewardLpBottomView.tt();
        }
    }

    public void i() {
        com.byazt.lo.tt ttVar = this.rh;
        if (ttVar != null) {
            ttVar.gt();
        }
    }

    public void sp() {
        com.byazt.lo.tt ttVar = this.rh;
        if (ttVar != null) {
            ttVar.rh();
        }
    }

    public void x() {
        com.byazt.lo.tt ttVar = this.rh;
        if (ttVar != null) {
            ttVar.nu();
        }
    }

    public boolean a() {
        return this.my.get();
    }

    public AtomicInteger n() {
        return new AtomicInteger(0);
    }

    public void tt() {
        final ImageView imageView = new ImageView(this.tt);
        float fVe = pf.ve(this.tt, 18.0f);
        float fVe2 = pf.ve(this.tt, 20.0f);
        int i10 = (int) fVe;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i10);
        layoutParams.gravity = 53;
        int i11 = (int) fVe2;
        layoutParams.setMargins(i11, i11, i11, i11);
        this.sp.addView(imageView, layoutParams);
        z.c((Context) this.tt, "tt_unmute", imageView, 320);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.dqg.c.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c cVar = c.this;
                cVar.zm = !cVar.zm;
                c cVar2 = c.this;
                z.c((Context) cVar2.tt, cVar2.zm ? "tt_mute" : "tt_unmute", imageView, 320);
                c.this.rh.ve(c.this.zm);
            }
        });
    }

    public boolean uj() {
        com.byazt.lo.tt ttVar = this.rh;
        if (ttVar != null) {
            return ttVar.u();
        }
        return false;
    }

    public boolean ve() {
        return this.gu.get();
    }

    @Override // com.byazt.dqg.tt
    public void c() {
        super.c();
        this.gt = nb.c(nb.uj(this.f13122c));
        com.byazt.seg.c cVar = this.yp;
        if (cVar == null) {
            rh.a().post(new Runnable() { // from class: com.byazt.dqg.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.tt.sp(8);
                    c.this.tt.rh();
                }
            });
            return;
        }
        int iUj = cVar.uj();
        if (iUj == 2) {
            nu();
            return;
        }
        if (iUj == 3) {
            rh();
        } else if (iUj != 4) {
            this.tt.sp(8);
            this.tt.rh();
        } else {
            my();
        }
    }

    public void tt(boolean z10) {
        if (this.rh == null || !com.byazt.xs.da.uj(this.ve)) {
            return;
        }
        this.rh.ve(z10);
    }

    public void c(boolean z10) {
        this.gu.set(z10);
    }

    @Override // com.byazt.dqg.tt
    public void c(com.byazt.hkv.tt ttVar, com.byazt.hkv.tt ttVar2) {
        super.c(ttVar, ttVar2);
        com.byazt.lo.uj ujVar = this.f13088m;
        if (ujVar != null) {
            ujVar.c(this.tt.ic());
        }
        com.byazt.lo.tt ttVar3 = this.rh;
        if (ttVar3 != null) {
            ttVar3.c(this.tt.ic());
        }
        com.byazt.qp.c cVar = this.nu;
        if (cVar != null) {
            cVar.c(ttVar);
        }
    }

    public void c(int i10) {
        if (this.f13088m == null || !com.byazt.xs.da.n(this.ve)) {
            return;
        }
        this.f13088m.a(i10);
    }

    @Override // com.byazt.dqg.tt
    public void c(DownloadListener downloadListener) {
        com.byazt.qp.c cVar = this.nu;
        if (cVar != null) {
            cVar.c(downloadListener);
        }
    }
}
