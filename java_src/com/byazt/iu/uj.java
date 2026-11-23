package com.byazt.iu;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.ete.x;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 127, 15})
public class uj<T> extends tt {
    public final long tt;

    private interface c {
        void c(boolean z10);
    }

    public uj(int i10) {
        super(i10);
        this.tt = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.byazt.dj.tt ttVar, n<T> nVar, bm bmVar) {
        long jCurrentTimeMillis;
        final x.uj ujVarSl = c().sl();
        final com.byazt.vvt.a.c cVarC = com.byazt.vvt.a.c(ttVar.uj(), ujVarSl);
        final com.byazt.iuu.uj ujVar = new com.byazt.iuu.uj(nVar, c(), this.f15524c, ttVar.uj());
        ujVar.c();
        c(ttVar, nVar, bmVar, ujVar);
        ttVar.uj();
        final int iC = cVarC.c(ujVarSl.n(), ujVarSl);
        if (iC < 0) {
            ttVar.uj();
            ujVar.c(false);
            return;
        }
        if (iC > 0) {
            jCurrentTimeMillis = System.currentTimeMillis() - ((((long) iC) * 60) * 1000);
            ttVar.uj();
        } else {
            jCurrentTimeMillis = 0;
        }
        c(ttVar, nVar, bmVar.sp == 2, ujVar, jCurrentTimeMillis, new c() { // from class: com.byazt.iu.uj.11
            @Override // com.byazt.iu.uj.c
            public void c(boolean z10) {
                ttVar.uj();
                ujVar.c(z10);
                if (z10) {
                    com.byazt.vvt.a.c cVar = cVarC;
                    int i10 = uj.this.f15524c;
                    com.byazt.dj.tt ttVar2 = ttVar;
                    x.uj ujVar2 = ujVarSl;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iC);
                    cVar.c(i10, ttVar2, ujVar2, "backup_cache", sb2.toString());
                }
            }
        });
    }

    private void n(com.byazt.dj.tt ttVar, final n<T> nVar, bm bmVar) {
        c(ttVar, nVar, bmVar.sp == 2, (com.byazt.iuu.tt) null, 0L, new c() { // from class: com.byazt.iu.uj.10
            @Override // com.byazt.iu.uj.c
            public void c(boolean z10) {
                if (z10) {
                    return;
                }
                nVar.c(-3, "no cache");
            }
        });
    }

    private void sp(com.byazt.dj.tt ttVar, n<T> nVar, bm bmVar) {
        double d10;
        x.uj ujVarSl = c().sl();
        com.byazt.vvt.a.c cVarC = com.byazt.vvt.a.c(ttVar.uj(), ujVarSl);
        if (ujVarSl.tt() > 0) {
            ttVar.uj();
            try {
                d10 = Double.parseDouble(com.byazt.whk.c.c().c("DeviceRate", "bytebench_value", ttVar.or()));
            } catch (Exception unused) {
                d10 = 0.0d;
            }
            if (d10 > 0.0d && d10 < ujVarSl.tt()) {
                ttVar.uj();
                c(ttVar, (n) nVar, bmVar, true, 0L, "device_score", String.valueOf(d10));
                return;
            }
        }
        if (ujVarSl.ve() > 0) {
            ttVar.uj();
            int iVe = rh.ve(gt.getContext());
            boolean z10 = true;
            if (iVe == 2 ? (ujVarSl.ve() & 1) == 0 : iVe == 3 ? (2 & ujVarSl.ve()) == 0 : iVe == 4 ? (ujVarSl.ve() & 16) == 0 : iVe == 5 ? (4 & ujVarSl.ve()) == 0 : iVe != 6 || (ujVarSl.ve() & 8) == 0) {
                z10 = false;
            }
            if (z10) {
                ttVar.uj();
                c(ttVar, (n) nVar, bmVar, true, 0L, "net_type", String.valueOf(iVe));
                return;
            }
        }
        if (ujVarSl.uj() > 0) {
            ttVar.uj();
            int iC = cVarC.c(ujVarSl.uj(), ujVarSl);
            if (iC > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - ((((long) iC) * 60) * 1000);
                ttVar.uj();
                c(ttVar, (n) nVar, bmVar, true, jCurrentTimeMillis, "good_cache", String.valueOf(iC));
                return;
            } else if (iC == 0) {
                ttVar.uj();
                c(ttVar, (n) nVar, bmVar, true, 0L, "behavior_score", String.valueOf(iC));
                return;
            }
        }
        ttVar.uj();
        c(ttVar, (n) nVar, bmVar, false, 0L, "", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.dj.tt ttVar, bm bmVar, n<T> nVar) {
        if (ttVar == null) {
            return;
        }
        int iVe = ve();
        if (bmVar.gt) {
            iVe = 0;
        }
        int i10 = x.c(this.f15524c).c("load_only_online", new x.tt.c().c(ttVar).c()) ? 0 : iVe;
        ttVar.uj();
        if (i10 == 0) {
            uj(ttVar, nVar, bmVar);
            return;
        }
        if (i10 == 1) {
            c(ttVar, nVar, bmVar);
            return;
        }
        if (i10 == 2) {
            tt(ttVar, nVar, bmVar);
            return;
        }
        if (i10 == 3) {
            ve(ttVar, nVar, bmVar);
            return;
        }
        if (i10 == 4) {
            n(ttVar, nVar, bmVar);
        } else if (i10 == 5) {
            sp(ttVar, nVar, bmVar);
        } else {
            m.uj("cache_tag", "仅实时：走到了兜底逻辑，预期不会走到！！！");
            uj(ttVar, nVar, bmVar);
        }
    }

    private void uj(com.byazt.dj.tt ttVar, n<T> nVar, bm bmVar) {
        c(ttVar, nVar, bmVar, (com.byazt.iuu.tt) null);
    }

    private void ve(com.byazt.dj.tt ttVar, n<T> nVar, bm bmVar) {
        final com.byazt.iuu.ve veVar = new com.byazt.iuu.ve(nVar, c());
        c(ttVar, nVar, bmVar, veVar);
        c(ttVar, nVar, bmVar.sp == 2, veVar, 0L, new c() { // from class: com.byazt.iu.uj.9
            @Override // com.byazt.iu.uj.c
            public void c(boolean z10) {
                if (z10) {
                    return;
                }
                veVar.c(false);
            }
        });
    }

    private int ve() {
        if (c() == null) {
            return com.byazt.iu.c.c(this.f15524c);
        }
        if (c().i() >= 0 && c().i() <= 5) {
            return c().i();
        }
        return com.byazt.iu.c.c(this.f15524c);
    }

    public void c(final com.byazt.dj.tt ttVar, final bm bmVar, final n<T> nVar) {
        com.byazt.bzd.x.n(new Runnable() { // from class: com.byazt.iu.uj.1
            @Override // java.lang.Runnable
            public void run() {
                uj.this.tt(ttVar, bmVar, new a(nVar));
            }
        });
    }

    private void c(final com.byazt.dj.tt ttVar, final n<T> nVar, final bm bmVar) {
        final com.byazt.iuu.c cVar = new com.byazt.iuu.c(nVar, c()) { // from class: com.byazt.iu.uj.6
            @Override // com.byazt.iuu.c
            public void c() {
                uj.this.c(ttVar, nVar, bmVar, this);
            }
        };
        c(ttVar, nVar, bmVar.sp == 2, cVar, 0L, new c() { // from class: com.byazt.iu.uj.7
            @Override // com.byazt.iu.uj.c
            public void c(boolean z10) {
                if (z10) {
                    return;
                }
                cVar.c(false);
            }
        });
    }

    private void c(final com.byazt.dj.tt ttVar, final n<T> nVar, final bm bmVar, boolean z10, long j10, final String str, final String str2) {
        final x.uj ujVarSl = c().sl();
        final com.byazt.vvt.a.c cVarC = com.byazt.vvt.a.c(ttVar.uj(), ujVarSl);
        if (z10) {
            ttVar.uj();
            final com.byazt.iuu.c cVar = new com.byazt.iuu.c(nVar, c()) { // from class: com.byazt.iu.uj.12
                @Override // com.byazt.iuu.c
                public void c() {
                    ttVar.uj();
                    uj.this.a(ttVar, nVar, bmVar);
                }
            };
            c(ttVar, nVar, bmVar.sp == 2, cVar, j10, new c() { // from class: com.byazt.iu.uj.13
                @Override // com.byazt.iu.uj.c
                public void c(boolean z11) {
                    ttVar.uj();
                    if (z11) {
                        cVarC.c(uj.this.f15524c, ttVar, ujVarSl, str, str2);
                    } else {
                        cVar.c(false);
                    }
                }
            });
        } else {
            ttVar.uj();
            a(ttVar, nVar, bmVar);
        }
    }

    private void tt(com.byazt.dj.tt ttVar, n<T> nVar, bm bmVar) {
        final com.byazt.iuu.uj ujVar = new com.byazt.iuu.uj(nVar, c(), this.f15524c, ttVar.uj());
        ujVar.c();
        c(ttVar, nVar, bmVar, ujVar);
        c(ttVar, nVar, bmVar.sp == 2, ujVar, 0L, new c() { // from class: com.byazt.iu.uj.8
            @Override // com.byazt.iu.uj.c
            public void c(boolean z10) {
                ujVar.c(true);
            }
        });
    }

    private void c(final com.byazt.dj.tt ttVar, final n<T> nVar, final boolean z10, final com.byazt.iuu.tt ttVar2, long j10, final c cVar) {
        List<ic> listC;
        ttVar.uj();
        if (!TextUtils.isEmpty(ttVar.rl())) {
            cVar.c(false);
            ttVar.uj();
            return;
        }
        if (c(z10) == null) {
            m.uj("cache_tag", "广告类型 " + this.f15524c + " ---缓存请求结束--- rit: " + ttVar.uj() + " 无配置");
            cVar.c(false);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iMin = Math.min(x.c(this.f15524c).t(), ttVar.t());
        double dM = x.c(this.f15524c).m();
        if (tt() != null) {
            tt().tt(ttVar.uj());
            listC = tt().c(ttVar.uj(), j10, iMin, dM);
        } else {
            listC = null;
        }
        if (listC != null && !listC.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (ic icVar : listC) {
                if (c(icVar)) {
                    arrayList.add(icVar);
                }
            }
            if (arrayList.isEmpty()) {
                cVar.c(false);
                return;
            }
            if (!c(z10).c(ttVar, arrayList)) {
                cVar.c(false);
                return;
            }
            ttVar.uj();
            arrayList.size();
            com.byazt.dbo.c cVar2 = new com.byazt.dbo.c(this.f15524c);
            cVar2.c(jCurrentTimeMillis);
            cVar2.tt(System.currentTimeMillis());
            cVar2.c(arrayList, new com.byazt.dbo.a() { // from class: com.byazt.iu.uj.2
                @Override // com.byazt.dbo.a
                public void c(List<ic> list) {
                    uj.this.c(list, ttVar, z10, ttVar2, nVar, cVar);
                }

                @Override // com.byazt.dbo.a
                public void tt(List<ic> list) {
                    ttVar.uj();
                    list.size();
                    if (list.isEmpty()) {
                        cVar.c(false);
                    } else {
                        uj.this.c(list, ttVar, z10, ttVar2, nVar, cVar);
                    }
                }

                @Override // com.byazt.dbo.a
                public void ve(List<ic> list) {
                    Iterator<ic> it2 = list.iterator();
                    while (it2.hasNext()) {
                        uj.this.tt().c(ttVar.uj(), it2.next());
                    }
                }
            });
            return;
        }
        cVar.c(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.dj.tt ttVar, final n<T> nVar, final bm bmVar, final com.byazt.iuu.tt ttVar2) {
        ttVar.uj();
        gt.c().c(ttVar, bmVar, this.f15524c, new gu.tt() { // from class: com.byazt.iu.uj.3
            @Override // com.byazt.omf.gu.tt
            public void c(int i10, String str, com.byazt.ete.tt ttVar3) {
                ttVar.uj();
                if (uj.this.c(bmVar.sp == 2) != null) {
                    uj.this.c(bmVar.sp == 2).c(ttVar, i10, str, ttVar3);
                }
                com.byazt.iuu.tt ttVar4 = ttVar2;
                if (ttVar4 != null) {
                    ttVar4.c(i10, str);
                    return;
                }
                n nVar2 = nVar;
                if (nVar2 != null) {
                    nVar2.c(i10, str);
                }
            }

            @Override // com.byazt.omf.gu.tt
            public void c(final com.byazt.ete.c cVar, final com.byazt.ete.tt ttVar3) {
                ttVar.uj();
                com.byazt.dx.c cVarC = uj.this.c(bmVar.sp == 2);
                if (cVarC == null) {
                    return;
                }
                cVarC.c(uj.this.f15524c, cVar, ttVar3, bmVar, ttVar, nVar, new sp() { // from class: com.byazt.iu.uj.3.1
                    @Override // com.byazt.iu.sp
                    public void c(ve veVar) {
                        ttVar.uj();
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        if (!uj.this.c(uj.this.c(ttVar, cVar, ttVar2))) {
                            if (veVar != null) {
                                com.byazt.iuu.tt ttVar4 = ttVar2;
                                if (ttVar4 == null) {
                                    veVar.c();
                                } else {
                                    ttVar4.c(veVar);
                                }
                            }
                            com.byazt.iuu.tt ttVar5 = ttVar2;
                            if (ttVar5 != null) {
                                ttVar5.ve();
                                return;
                            }
                            return;
                        }
                        ttVar.uj();
                        if (veVar != null) {
                            veVar.ve();
                        }
                        AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                        com.byazt.iuu.tt ttVar6 = ttVar2;
                        if (ttVar6 != null) {
                            ttVar6.tt(-3, com.byazt.omf.sp.c(-3));
                            ttVar2.ve();
                        } else {
                            n nVar2 = nVar;
                            if (nVar2 != null) {
                                nVar2.c(-3, com.byazt.omf.sp.c(-3));
                            }
                        }
                    }

                    @Override // com.byazt.iu.sp
                    public void c(int i10) {
                        n nVar2 = nVar;
                        if (nVar2 != null) {
                            nVar2.c(i10, com.byazt.omf.sp.c(i10));
                        }
                        ttVar3.c(i10);
                        com.byazt.ete.tt.c(ttVar3);
                        com.byazt.iuu.tt ttVar4 = ttVar2;
                        if (ttVar4 != null) {
                            ttVar4.ve();
                        }
                    }
                });
            }
        });
    }

    public void c(final com.byazt.dj.tt ttVar, final bm bmVar) {
        if (ttVar == null) {
            return;
        }
        ttVar.gt();
        if (!com.byazt.wu.uj.c(ttVar.qy())) {
            ttVar.gt();
            return;
        }
        if (x.c(this.f15524c).c("forbid_preload", new x.tt.c().c(ttVar).c())) {
            ttVar.gt();
            ttVar.uj();
            return;
        }
        if (ve() == 0) {
            ttVar.gt();
            return;
        }
        if (!tt().c(ttVar.uj())) {
            ttVar.gt();
            return;
        }
        if (!TextUtils.isEmpty(ttVar.rl())) {
            ttVar.gt();
            if (c(bmVar.sp == 2) != null) {
                c(bmVar.sp == 2).c(ttVar);
                return;
            }
            return;
        }
        com.byazt.bzd.x.n(new Runnable() { // from class: com.byazt.iu.uj.4
            @Override // java.lang.Runnable
            public void run() {
                ttVar.gt();
                uj.this.c(ttVar, (n) null, bmVar, (com.byazt.iuu.tt) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final List<ic> list, final com.byazt.dj.tt ttVar, boolean z10, final com.byazt.iuu.tt ttVar2, n<T> nVar, final c cVar) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_playAgain", false);
        bundle.putBoolean(PointParamKey.IS_CACHE, true);
        bundle.putLong(f.f84665p, this.tt);
        c(z10).c(this.f15524c, list, ttVar, nVar, bundle, new sp() { // from class: com.byazt.iu.uj.5
            @Override // com.byazt.iu.sp
            public void c(int i10) {
            }

            @Override // com.byazt.iu.sp
            public void c(ve veVar) {
                com.byazt.iuu.tt ttVar3 = ttVar2;
                if (ttVar3 != null) {
                    ttVar3.tt(veVar);
                    ttVar2.c(true);
                    list.size();
                    ttVar.uj();
                } else {
                    veVar.c();
                    list.size();
                    ttVar.uj();
                }
                cVar.c(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public x.tt c(com.byazt.dj.tt ttVar, com.byazt.ete.c cVar, com.byazt.iuu.tt ttVar2) {
        x.tt.c cVarC = new x.tt.c().c(ttVar).c(ttVar2 != null && ttVar2.uj());
        ic icVarC = c(cVar);
        if (icVarC != null) {
            cVarC.c(icVarC);
        }
        return cVarC.c();
    }

    private ic c(com.byazt.ete.c cVar) {
        if (cVar == null || cVar.tt() == null || cVar.tt().isEmpty()) {
            return null;
        }
        return cVar.tt().get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(x.tt ttVar) {
        return x.c(this.f15524c).c("forbid_realtime", ttVar);
    }
}
