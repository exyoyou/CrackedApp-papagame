package com.aggmoread.sdk.z.c.a.a.d.a.d;

import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e extends com.aggmoread.sdk.z.c.a.a.d.b.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f4477q;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4478b;

        a(List list) {
            this.f4478b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.o.c) e.this.f4910h.f4951g).onAdLoaded(this.f4478b);
        }
    }

    public e(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4477q = false;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void a(int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("bidding floor " + i10);
        com.aggmoread.sdk.z.c.a.a.d.b.j jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001006004, "广告无填充!");
        a(this.f4910h, this.f4911i).a(8).a(jVar).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, i10)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, i10)).b();
        if (this.f4911i.l()) {
            return;
        }
        this.f4910h.f4951g.a(jVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void b(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("AMHTAG", "onAdError %s", jVar);
        a(this.f4910h, this.f4911i).a(8).a(jVar).b();
        if (this.f4477q || !this.f4911i.l()) {
            this.f4910h.f4951g.a(jVar);
        }
    }

    protected void c(Object obj, int i10) {
    }

    protected void e(List<com.aggmoread.sdk.z.c.a.a.c.o.a> list) {
        if (list == null || list.size() == 0) {
            b(new com.aggmoread.sdk.z.c.a.a.d.b.j(-1000, "广告无填充!"));
            return;
        }
        this.f4477q = true;
        this.f4911i.f5005e = list.size();
        a(this.f4910h, this.f4911i).a(3).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, list.get(0).h())).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, list.get(0).h())).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.C, Integer.valueOf(list.size())).b();
        if (this.f4910h.f4951g instanceof com.aggmoread.sdk.z.c.a.a.c.o.c) {
            q.a(new a(list));
        }
    }

    protected boolean q() {
        return com.aggmoread.sdk.z.c.a.a.e.p.n(this.f4911i);
    }

    protected final void a(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("bidding floor " + i10);
        a(obj, 1, i10);
    }

    protected final void b(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("bidding win " + i10);
        if (!com.aggmoread.sdk.z.c.a.a.e.p.l(this.f4911i) && i10 > 0) {
            c(obj, i10);
        }
    }

    protected void a(Object obj, int i10, int i11) {
    }
}
