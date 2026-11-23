package com.aggmoread.sdk.z.c.a.a.d.a.d;

import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h extends com.aggmoread.sdk.z.c.a.a.d.b.a implements com.aggmoread.sdk.z.c.a.a.c.r.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f4498q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Object[] f4499r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.r.a f4500s;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4501b;

        a(List list) {
            this.f4501b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.r.c) h.this.f4910h.f4951g).onAdLoaded(this.f4501b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.j f4503b;

        b(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            this.f4503b = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4910h.f4951g.a(this.f4503b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.j f4505b;

        c(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            this.f4505b = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4500s.a(this.f4505b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.r.c) h.this.f4910h.f4951g).onAdVideoCached();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4500s.a();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4500s.onADLeftApplication();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4500s.onAdShow();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.h$h, reason: collision with other inner class name */
    class RunnableC0124h implements Runnable {
        RunnableC0124h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4500s.onAdClicked();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.f4500s.onAdVideoCompleted();
        }
    }

    public h(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4498q = false;
        this.f4499r = com.aggmoread.sdk.z.c.a.a.b.b();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("当前传入Activity为空");
        c(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002009, "show failed,当前传入Activity为空"));
    }

    protected void c(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        if (this.f4500s != null) {
            q.a(new c(jVar));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public String getID() {
        return this.f4910h.f4947c;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4909g);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void p() {
        if (m()) {
            return;
        }
        super.p();
    }

    protected void q() {
        if (this.f4500s != null) {
            q.a(new f());
        }
    }

    protected void r() {
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4499r, false, true);
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4910h, this.f4911i);
        boolean zA = mVarA.a(this.f4911i, null, 0L, this.f4499r);
        mVarA.b();
        if (!zA || this.f4500s == null) {
            return;
        }
        q.a(new RunnableC0124h());
    }

    protected void s() {
        a(this.f4910h, this.f4911i).a(4).b();
        if (this.f4500s != null) {
            q.a(new e());
        }
    }

    protected void t() {
        com.aggmoread.sdk.z.c.a.a.e.e.a("exposure");
        a((com.aggmoread.sdk.z.c.a.a.c.f) this.f4500s);
    }

    protected void u() {
        this.f4498q = true;
        a(this.f4910h, this.f4911i).a(3).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, this.f4909g)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, this.f4909g)).b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        if (this.f4910h.f4951g instanceof com.aggmoread.sdk.z.c.a.a.c.r.c) {
            q.a(new a(arrayList));
        }
    }

    protected void v() {
        if (this.f4500s != null) {
            q.a(new g());
        }
    }

    protected void w() {
        if (this.f4498q && (this.f4910h.f4951g instanceof com.aggmoread.sdk.z.c.a.a.c.r.c)) {
            q.a(new d());
        }
    }

    protected void x() {
        if (this.f4500s != null) {
            q.a(new i());
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            c(i10);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void b(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        a(this.f4910h, this.f4911i).a(8).a(jVar).b();
        if (this.f4498q) {
            c(jVar);
        } else {
            if (this.f4911i.l()) {
                return;
            }
            q.a(new b(jVar));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            b(i10, i11, str);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(com.aggmoread.sdk.z.c.a.a.c.r.a aVar) {
        this.f4500s = aVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }
}
