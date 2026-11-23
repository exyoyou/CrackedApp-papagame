package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.app.Activity;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f extends com.aggmoread.sdk.z.c.a.a.d.b.a implements com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f4480q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Object[] f4481r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.e f4482s;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4482s.onAdClicked();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4482s.onAdVideoCompleted();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4485b;

        c(List list) {
            this.f4485b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.q.c) f.this.f4910h.f4951g).onAdLoaded(this.f4485b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4487b;

        d(List list) {
            this.f4487b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.r.c) f.this.f4910h.f4951g).onAdLoaded(this.f4487b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.j f4489b;

        e(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            this.f4489b = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4910h.f4951g.a(this.f4489b);
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.f$f, reason: collision with other inner class name */
    class RunnableC0123f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.j f4491b;

        RunnableC0123f(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            this.f4491b = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4482s.a(this.f4491b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.q.c) f.this.f4910h.f4951g).onAdVideoCached();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.r.c) f.this.f4910h.f4951g).onAdVideoCached();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4482s.a();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4482s.onADLeftApplication();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f4482s.onAdShow();
        }
    }

    public f(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4480q = false;
        this.f4481r = com.aggmoread.sdk.z.c.a.a.b.b();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("当前传入Activity为空");
        c(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002009, "show failed,当前传入Activity为空"));
    }

    protected void c(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        if (this.f4482s != null) {
            q.a(new RunnableC0123f(jVar));
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
        if (this.f4482s != null) {
            q.a(new j());
        }
    }

    protected void r() {
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4481r, false, true);
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4910h, this.f4911i);
        boolean zA = mVarA.a(this.f4911i, null, 0L, this.f4481r);
        mVarA.b();
        if (!zA || this.f4482s == null) {
            return;
        }
        q.a(new a());
    }

    protected void s() {
        a(this.f4910h, this.f4911i).a(4).b();
        if (this.f4482s != null) {
            q.a(new i());
        }
    }

    protected void t() {
        com.aggmoread.sdk.z.c.a.a.e.e.a("exposure");
        a(this.f4482s);
    }

    protected void u() {
        Runnable dVar;
        this.f4480q = true;
        a(this.f4910h, this.f4911i).a(3).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, this.f4909g)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, this.f4909g)).b();
        com.aggmoread.sdk.z.c.a.a.c.g gVar = this.f4910h.f4951g;
        if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.q.c) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this);
            dVar = new c(arrayList);
        } else {
            if (!(gVar instanceof com.aggmoread.sdk.z.c.a.a.c.r.c)) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this);
            dVar = new d(arrayList2);
        }
        q.a(dVar);
    }

    protected void v() {
        if (this.f4482s != null) {
            q.a(new k());
        }
    }

    protected void w() {
        Runnable hVar;
        if (this.f4480q) {
            com.aggmoread.sdk.z.c.a.a.c.g gVar = this.f4910h.f4951g;
            if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.q.c) {
                hVar = new g();
            } else if (!(gVar instanceof com.aggmoread.sdk.z.c.a.a.c.r.c)) {
                return;
            } else {
                hVar = new h();
            }
            q.a(hVar);
        }
    }

    protected void x() {
        if (this.f4482s != null) {
            q.a(new b());
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
        if (this.f4480q) {
            c(jVar);
        } else {
            if (this.f4911i.l()) {
                return;
            }
            q.a(new e(jVar));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            b(i10, i11, str);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        b();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.q.b
    public void a(com.aggmoread.sdk.z.c.a.a.c.q.a aVar) {
        this.f4482s = aVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(com.aggmoread.sdk.z.c.a.a.c.r.a aVar) {
        this.f4482s = aVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }
}
