package com.byazt.iox;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.ete.ic;
import com.byazt.im.a;
import com.byazt.im.sp;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.byazt.tdq.n;
import com.byazt.ukr.yp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.tdq.c f15438c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15439n;
    public n sp;
    public String tt;
    public com.byazt.dj.tt ve;
    public sp uj = new sp();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.dbo.c f15437a = new com.byazt.dbo.c(4);

    public c(com.byazt.tdq.c cVar) {
        this.f15438c = cVar;
        cVar.tt();
        this.f15439n = gt.tt().g();
    }

    public void c(com.byazt.im.n nVar, com.byazt.gat.tt<a, sp> ttVar) {
        if (nVar == null || ttVar == null) {
            return;
        }
        this.uj.tt(true);
        this.ve = nVar.uj();
        this.tt = nVar.a();
        this.sp = nVar.sp();
        if (com.byazt.gat.n.c(this.ve, nVar.n())) {
            this.uj.tt(1);
            this.uj.c("no cache");
            ttVar.c(this.uj);
            return;
        }
        c(this.tt, ttVar);
    }

    private void c(final String str, final com.byazt.gat.tt<a, sp> ttVar) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.f15438c.c(this.uj, str, new com.byazt.tdq.c.InterfaceC0438c() { // from class: com.byazt.iox.c.1
            @Override // com.byazt.tdq.c.InterfaceC0438c
            public void c(final a aVar) {
                com.byazt.dz.c.c("lqmt", "缓存读取总耗时： " + (System.currentTimeMillis() - jCurrentTimeMillis));
                if (ttVar == null) {
                    return;
                }
                if (aVar == null || aVar.tt() == null) {
                    if (aVar == null) {
                        c.this.uj.tt(1);
                        c.this.uj.c("no ad model cache");
                        ttVar.c(c.this.uj);
                        return;
                    } else if (aVar.tt() == null) {
                        c.this.uj.tt(1);
                        c.this.uj.c("no splash material");
                        ttVar.c(c.this.uj);
                        return;
                    }
                }
                ic icVarTt = aVar.tt();
                c.this.f15437a.c(jCurrentTimeMillis);
                c.this.f15437a.tt(System.currentTimeMillis());
                ArrayList arrayList = new ArrayList();
                arrayList.add(icVarTt);
                c.this.f15437a.c(arrayList, new com.byazt.dbo.a() { // from class: com.byazt.iox.c.1.1
                    @Override // com.byazt.dbo.a
                    public void c(List<ic> list) {
                        if (!c.this.f15439n) {
                            ttVar.tt(aVar);
                        } else {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            c.this.c(aVar, (com.byazt.gat.tt<a, sp>) ttVar);
                        }
                    }

                    @Override // com.byazt.dbo.a
                    public void tt(List<ic> list) {
                        if (list != null && !list.isEmpty()) {
                            ttVar.tt(aVar);
                            return;
                        }
                        c.this.uj.tt(22);
                        c.this.uj.c("check server cache unavailable");
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        ttVar.c(c.this.uj);
                    }

                    @Override // com.byazt.dbo.a
                    public void ve(List<ic> list) {
                        Iterator<ic> it2 = list.iterator();
                        while (it2.hasNext()) {
                            c.this.f15438c.c(str, it2.next());
                        }
                    }
                });
            }

            @Override // com.byazt.tdq.c.InterfaceC0438c
            public void c() {
                com.byazt.dz.c.c("lqmt", "缓存读取失败");
                com.byazt.gat.tt ttVar2 = ttVar;
                if (ttVar2 == null) {
                    return;
                }
                ttVar2.c(c.this.uj);
            }
        }, this.sp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final a aVar, final com.byazt.gat.tt<a, sp> ttVar) {
        if (ttVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ic icVarTt = aVar.tt();
        gt.c().c(icVarTt.uj(), icVarTt.w_(), new gu.c() { // from class: com.byazt.iox.c.2
            @Override // com.byazt.omf.gu.c
            public void c(boolean z10, long j10, long j11) {
                yp.c(c.this.ve, j10, j11, System.currentTimeMillis() - jCurrentTimeMillis, 4, 1, z10 ? 1 : 0);
                if (z10) {
                    ttVar.tt(aVar);
                    return;
                }
                c.this.uj.tt(22);
                c.this.uj.c("check server cache unavailable");
                c.this.uj.c(j10);
                ttVar.c(c.this.uj);
            }
        });
    }
}
