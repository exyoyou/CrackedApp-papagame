package com.byazt.cf;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.bzd.x;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import com.byazt.ogz.i;
import com.byazt.omf.gt;
import com.byazt.omf.h;
import com.byazt.omf.rh;
import com.umeng.analytics.pro.f;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 18, 54})
public abstract class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f12399c;
    public final com.byazt.iu.uj tt;

    public ve(Context context) {
        this.f12399c = context == null ? gt.getContext() : context.getApplicationContext();
        this.tt = new com.byazt.iu.uj(tt());
    }

    public abstract int tt();

    public void tt(String str) {
        c().c(str, com.byazt.hi.tt.REQED);
    }

    public void c(com.byazt.dj.tt ttVar, com.byazt.rob.uj ujVar, uj ujVar2) {
        c(ttVar, ujVar2, null, ujVar, null, null);
        com.byazt.rob.ve.c(ujVar.c(), true, ujVar.ve(), 0);
    }

    public void c(final ic icVar, final String str) {
        x.c(new com.byazt.bwm.sp("rewardFull preloadOnDestroy") { // from class: com.byazt.cf.ve.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.dj.tt ttVarC = com.byazt.lvl.c.c().c(icVar, str);
                if (ttVarC == null || TextUtils.isEmpty(ttVarC.uj())) {
                    return;
                }
                ic icVarC = com.byazt.eti.n.c(ve.this.tt()).c(ttVarC.uj(), false, 0L);
                if (gt.tt().tt(ttVarC.uj()) && icVarC != null) {
                    if (icVarC.dz() + icVarC.b() < System.currentTimeMillis()) {
                        com.byazt.eti.n.c(ve.this.tt()).c(ttVarC.uj());
                    }
                }
                if (icVarC == null) {
                    ve.this.c(ttVarC);
                }
            }
        });
    }

    public void c(com.byazt.dj.tt ttVar) {
        if (this.tt != null) {
            this.tt.c(ttVar, c(true, System.currentTimeMillis(), ttVar, null, null));
        }
    }

    public void c(final com.byazt.dj.tt ttVar, final uj ujVar) {
        String str;
        if (ttVar != null) {
            ttVar.uj();
        }
        final String string = UUID.randomUUID().toString();
        if (ttVar == null || !TextUtils.isEmpty(ttVar.rl())) {
            str = null;
        } else {
            String string2 = UUID.randomUUID().toString();
            c(string2, ttVar, tt());
            str = string2;
        }
        c(str);
        if (!i.c()) {
            c(str, null, false, new com.byazt.lq.ve(1000, "广告请求开关已关闭,请联系穿山甲管理员"));
            ujVar.c(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return;
        }
        com.byazt.iyp.tt.c(ttVar, true, string);
        final String str2 = str;
        com.byazt.bwm.sp spVar = new com.byazt.bwm.sp("loadRewardVideoAd") { // from class: com.byazt.cf.ve.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ve.this.c(ttVar, ujVar, null, null, str2, string);
                } catch (Throwable th) {
                    String str3 = " msg = " + th.getMessage();
                    ve.this.c(str2, null, false, new com.byazt.lq.ve(4000, str3));
                    ujVar.c(4000, str3);
                    m.ve("RewardFullLoadManager", "reward  component maybe not exist, pls check1", th);
                }
            }
        };
        if (!rh.f18098c) {
            m.uj("RewardFullLoadManager", h.NOT_INIT_TIPS_MSG);
            c(str, null, false, new com.byazt.lq.ve(10000, h.NOT_INIT_TIPS_MSG));
            ujVar.c(10000, h.NOT_INIT_TIPS_MSG);
        } else {
            h.execLoadAd(spVar, tt());
            com.byazt.ktv.c.c().c(tt(), ttVar);
        }
    }

    private void c(String str, final com.byazt.dj.tt ttVar, final int i10) {
        com.byazt.lh.tt ttVar2 = (com.byazt.lh.tt) com.byazt.ip.n.c(0);
        ttVar2.tt(str, ttVar.or());
        ttVar2.c(str, new com.byazt.ky.ve());
        if (com.byazt.wi.a.c().c(i10)) {
            ttVar2.c(str, new com.byazt.wi.ve());
        }
        ttVar2.c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.cf.ve.3
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar3) {
                com.byazt.dj.tt ttVar4;
                if (!(ttVar3 instanceof com.byazt.ha.tt) || (ttVar4 = ttVar) == null) {
                    return;
                }
                com.byazt.ha.tt ttVar5 = (com.byazt.ha.tt) ttVar3;
                ttVar5.f14873c = ttVar4;
                ttVar5.sp = i10;
                ttVar5.f15453x = ttVar4.uj();
            }
        });
    }

    public void c(final com.byazt.dj.tt ttVar, final uj ujVar, com.byazt.cjm.ve veVar, final com.byazt.rob.uj ujVar2, final String str, final String str2) {
        final bm bmVarC = c(false, ujVar != null ? ujVar.c() : System.currentTimeMillis(), ttVar, veVar, ujVar2);
        bmVarC.my = str2;
        if (this.tt != null) {
            tt(str);
            final AtomicReference atomicReference = new AtomicReference(str);
            this.tt.c(ttVar, bmVarC, new com.byazt.iu.n() { // from class: com.byazt.cf.ve.4
                @Override // com.byazt.iu.n
                public void c(Object obj, boolean z10, ic icVar) {
                    com.byazt.dj.tt ttVar2;
                    String strTt = (String) atomicReference.get();
                    if (TextUtils.isEmpty(strTt) && (ttVar2 = ttVar) != null && !TextUtils.isEmpty(ttVar2.rl()) && icVar != null) {
                        strTt = ve.this.c().tt(icVar.qy());
                        atomicReference.set(strTt);
                    }
                    ve.this.c(strTt, true);
                    bmVarC.c(obj, z10 ? 3 : 2);
                    ve veVar2 = ve.this;
                    veVar2.c(strTt, veVar2.c(obj), true, null);
                    com.byazt.rob.uj ujVar3 = ujVar2;
                    if (ujVar3 != null && ujVar3.n()) {
                        ujVar2.tt(icVar);
                    }
                    uj ujVar4 = ujVar;
                    if (ujVar4 != null) {
                        ujVar4.c(obj);
                    }
                    if (icVar == null || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    icVar.c(str2);
                    com.byazt.iyp.tt.c(icVar, nb.tt(ve.this.tt()));
                }

                @Override // com.byazt.iu.n
                public void c(Object obj) {
                    String str3 = (String) atomicReference.get();
                    if (com.byazt.wi.a.c().c(ve.this.tt()) && !TextUtils.isEmpty(str3)) {
                        com.byazt.wi.a.c().tt(str3, System.currentTimeMillis());
                    }
                    uj ujVar3 = ujVar;
                    if (ujVar3 != null) {
                        ujVar3.tt(obj);
                    }
                }

                @Override // com.byazt.iu.n
                public void c(int i10, String str3) {
                    ve.this.c(str, false);
                    bmVarC.c((Object) null, 1);
                    ve.this.c(str, null, false, new com.byazt.lq.ve(i10, str3));
                    uj ujVar3 = ujVar;
                    if (ujVar3 != null) {
                        ujVar3.c(i10, str3);
                    }
                }
            });
        }
    }

    private bm c(boolean z10, long j10, com.byazt.dj.tt ttVar, com.byazt.cjm.ve veVar, com.byazt.rob.uj ujVar) {
        boolean z11;
        bm bmVar = new bm();
        bmVar.f13582i = j10;
        if (z10) {
            bmVar.f13580c = 2;
        }
        bmVar.sp = 2;
        boolean z12 = false;
        if (veVar == null || !veVar.ve()) {
            z11 = false;
        } else {
            bmVar.ve = veVar.c();
            bmVar.uj = veVar.tt();
            bmVar.gt = true;
            z11 = true;
        }
        if (ujVar != null && ujVar.n()) {
            bmVar.nu = ujVar.ve();
            bmVar.rh = ujVar.uj();
            bmVar.gt = true;
            z12 = true;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_playAgain", z11);
        bundle.putBoolean("is_second_page_ad", z12);
        bundle.putBoolean("is_preload", z10);
        bundle.putLong(f.f84665p, bmVar.f13582i);
        bmVar.f13583m = bundle;
        if (ttVar != null) {
            bmVar.c(tt(), ttVar.uj(), 1, ttVar);
        } else {
            bmVar.c(tt(), "", 1, ttVar);
        }
        return bmVar;
    }

    public void c(String str) {
        c().c(str, com.byazt.hi.tt.STARTED);
    }

    public void c(String str, final boolean z10) {
        c().c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.cf.ve.5
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar) {
                if (ttVar instanceof com.byazt.ha.tt) {
                    ((com.byazt.ha.tt) ttVar).tt = z10;
                }
            }
        });
        c().c(str, com.byazt.hi.tt.RECEIVED);
    }

    public void c(final String str, final String str2, final boolean z10, final com.byazt.lq.ve veVar) {
        c().c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.cf.ve.6
            @Override // com.byazt.ip.uj.c
            public void c(com.byazt.ip.tt ttVar) {
                if (ttVar instanceof com.byazt.ha.tt) {
                    com.byazt.ha.tt ttVar2 = (com.byazt.ha.tt) ttVar;
                    ttVar2.ve = z10;
                    ttVar2.uj = veVar;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    ttVar2.f14874n.add(str2);
                }
            }
        });
        if (!TextUtils.isEmpty(str2)) {
            ((com.byazt.lh.ve) com.byazt.ip.n.c(1)).c(str2, new com.byazt.ip.uj.c() { // from class: com.byazt.cf.ve.7
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar) {
                    if (ttVar instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar).f14877c = str;
                    }
                }
            });
        }
        c().c(str, com.byazt.hi.tt.LOADED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.lh.tt c() {
        return (com.byazt.lh.tt) com.byazt.ip.n.c(0);
    }

    public String c(Object obj) {
        if (obj instanceof com.byazt.yi.ve) {
            return ((com.byazt.yi.ve) obj).getLifecycleId();
        }
        if (obj instanceof com.byazt.yi.tt) {
            return ((com.byazt.yi.tt) obj).getLifecycleId();
        }
        return null;
    }

    public void c(ic icVar) {
        com.byazt.iu.uj ujVar = this.tt;
        if (ujVar != null) {
            ujVar.tt().c(icVar);
        }
    }

    public static void c(int i10, ic icVar) {
        if (i10 == 7) {
            sp.c().c(icVar);
        } else {
            if (i10 != 8) {
                return;
            }
            tt.c().c(icVar);
        }
    }

    public ic c(String str, int i10) {
        com.byazt.iu.uj ujVar = this.tt;
        if (ujVar != null) {
            return ujVar.tt().c(str, i10);
        }
        return null;
    }
}
