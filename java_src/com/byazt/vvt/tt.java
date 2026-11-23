package com.byazt.vvt;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.bzd.t;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.ete.x;
import com.byazt.ete.xd;
import com.byazt.fk.da;
import com.byazt.iu.sp;
import com.byazt.omf.gt;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 210, 13})
public abstract class tt<V> extends com.byazt.dx.c<V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.iu.tt f21372c;

    public interface c<V> {
        void c(V v10);
    }

    public tt(com.byazt.iu.tt ttVar) {
        this.f21372c = ttVar;
    }

    public abstract void c(com.byazt.dj.tt ttVar, List<ic> list, c<V> cVar);

    public abstract void c(com.byazt.dj.tt ttVar, List<ic> list, V v10);

    @Override // com.byazt.dx.c
    public boolean c(com.byazt.dj.tt ttVar, List<ic> list) {
        return true;
    }

    @Override // com.byazt.dx.c
    public void c(com.byazt.dj.tt ttVar, int i10, String str, com.byazt.ete.tt ttVar2) {
        ttVar2.c(i10);
        com.byazt.ete.tt.c(ttVar2);
    }

    @Override // com.byazt.dx.c
    public void c(int i10, com.byazt.ete.c cVar, com.byazt.ete.tt ttVar, bm bmVar, com.byazt.dj.tt ttVar2, com.byazt.iu.n<V> nVar, sp spVar) {
        if (cVar.tt() == null || cVar.tt().isEmpty()) {
            if (spVar != null) {
                spVar.c(-3);
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (cVar.tt().size() > 1) {
            if (x.c(i10).c("mix_ad", new x.tt.c().c(ttVar2).c(cVar.tt().get(0)).c())) {
                com.byazt.omf.c.c(cVar.tt());
                arrayList.add(cVar.tt().get(0));
            } else {
                arrayList.addAll(cVar.tt());
            }
        } else {
            arrayList.addAll(cVar.tt());
        }
        for (ic icVar : arrayList) {
            if (icVar.qt()) {
                if (icVar.uv() <= 0) {
                    icVar.n((System.currentTimeMillis() + 10500000) / 1000);
                }
                icVar.lr(102);
                c(i10, ttVar2, icVar);
            }
        }
        if (arrayList.isEmpty()) {
            if (spVar != null) {
                spVar.c(-4);
            }
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong(f.f84665p, bmVar.f13582i);
            bundle.putBoolean("is_second_page_ad", bmVar.nu > 0);
            c(i10, arrayList, ttVar2, nVar, bundle, spVar);
        }
    }

    @Override // com.byazt.dx.c
    public void c(final int i10, final List<ic> list, final com.byazt.dj.tt ttVar, final com.byazt.iu.n<V> nVar, final Bundle bundle, final sp spVar) {
        boolean z10 = bundle.getBoolean(PointParamKey.IS_CACHE, false);
        Iterator<ic> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().da(z10);
        }
        c(ttVar, list, (c) new c<V>() { // from class: com.byazt.vvt.tt.1
            @Override // com.byazt.vvt.tt.c
            public void c(V v10) {
                com.byazt.iu.ve veVarC = tt.this.c(i10, ttVar, v10, (List<ic>) list, bundle, nVar);
                sp spVar2 = spVar;
                if (spVar2 != null) {
                    spVar2.c(veVarC);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.iu.ve c(final int i10, final com.byazt.dj.tt ttVar, final V v10, final List<ic> list, Bundle bundle, final com.byazt.iu.n<V> nVar) {
        final long j10 = bundle.getLong(f.f84665p);
        final boolean z10 = bundle.getBoolean(PointParamKey.IS_CACHE);
        final boolean z11 = bundle.getBoolean("is_second_page_ad", false);
        Iterator<ic> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().bn().tt();
        }
        final ic icVar = list.get(0);
        return new com.byazt.iu.ve() { // from class: com.byazt.vvt.tt.2
            public final AtomicBoolean sl = new AtomicBoolean(false);

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.byazt.iu.ve
            public void c() {
                if (!z11) {
                    tt.this.c(ttVar, (List<ic>) list, v10);
                }
                com.byazt.ddx.uj.tt(icVar, nb.tt(i10), j10);
                com.byazt.iu.n nVar2 = nVar;
                if (nVar2 != null) {
                    nVar2.c(v10, z10, icVar);
                }
            }

            @Override // com.byazt.iu.ve
            public void tt() {
            }

            @Override // com.byazt.iu.ve
            public void ve() {
                if (this.sl.compareAndSet(false, true)) {
                    tt.this.c(z10, ttVar, list);
                }
            }
        };
    }

    public void c(boolean z10, com.byazt.dj.tt ttVar, List<ic> list) {
        if (z10) {
            com.byazt.iu.tt ttVar2 = this.f21372c;
            if (ttVar2 != null) {
                ttVar2.tt().tt(ttVar, list);
                return;
            }
            return;
        }
        com.byazt.iu.tt ttVar3 = this.f21372c;
        if (ttVar3 != null) {
            ttVar3.tt().c(ttVar, list);
        }
    }

    @Override // com.byazt.dx.c
    public void c(final int i10, com.byazt.dj.tt ttVar, final ic icVar) {
        com.byazt.bzd.x.c(new com.byazt.bwm.sp("preloadResOnMetaCreated") { // from class: com.byazt.vvt.tt.3
            @Override // java.lang.Runnable
            public void run() {
                if ((!ic.c(icVar) || t.c(icVar)) && !TextUtils.isEmpty(xd.c(icVar))) {
                    if (gt.tt().uj(String.valueOf(nb.t(icVar))) && gt.tt().sf()) {
                        if (xd.z(icVar) != null) {
                            xd.z(icVar).setRewardVideoCachedType(1);
                        }
                        if (xd.m(icVar) != null) {
                            xd.m(icVar).setRewardVideoCachedType(1);
                        }
                        com.byazt.jzl.a aVarC = xd.c(4, icVar);
                        aVarC.putExtra("material_meta", icVar);
                        aVarC.putExtra("ad_slot", Integer.valueOf(i10));
                        com.byazt.btt.ve.c(aVarC, (da.c) null);
                    }
                }
            }
        });
    }
}
