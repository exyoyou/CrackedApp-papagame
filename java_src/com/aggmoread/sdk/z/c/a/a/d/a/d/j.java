package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.app.Activity;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public abstract class j extends com.aggmoread.sdk.z.c.a.a.d.b.a implements com.aggmoread.sdk.z.c.a.a.c.s.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected AtomicBoolean f4518q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Map<String, Object> f4519r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected Object[] f4520s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f4521t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.s.d f4522u;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.v();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f4524b;

        b(Activity activity) {
            this.f4524b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.b(this.f4524b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f4526b;

        c(ArrayList arrayList) {
            this.f4526b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.s.b) j.this.f4910h.f4951g).onAdLoaded(this.f4526b);
        }
    }

    public j(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4518q = new AtomicBoolean();
        this.f4519r = new HashMap();
        this.f4520s = com.aggmoread.sdk.z.c.a.a.b.b();
        this.f4521t = false;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(int i10) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            c(i10);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.s.a
    public void b() {
        if (com.aggmoread.sdk.z.c.a.a.e.p.a()) {
            v();
        } else {
            q.a(new a());
        }
    }

    protected void c(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        a(this.f4910h, this.f4911i).a(8).a(jVar).b();
        com.aggmoread.sdk.z.c.a.a.c.s.d dVar = this.f4522u;
        if (dVar != null) {
            dVar.a(jVar);
        }
    }

    protected void d(int i10) {
        this.f4521t = true;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        a(this.f4910h, this.f4911i).a(3).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.C, Integer.valueOf(i10)).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, this.f4909g)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, this.f4909g)).b();
        if (this.f4910h.f4951g instanceof com.aggmoread.sdk.z.c.a.a.c.s.b) {
            q.a(new c(arrayList));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.s.a
    public void destroy() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public String getID() {
        return this.f4910h.f4947c;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4909g);
    }

    protected void q() {
        com.aggmoread.sdk.z.c.a.a.c.s.d dVar;
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4910h, this.f4911i);
        boolean zA = mVarA.a(this.f4911i, null, 0L, this.f4520s);
        mVarA.b();
        if (zA && (dVar = this.f4522u) != null) {
            dVar.onAdClicked();
        }
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4520s, false, true);
    }

    protected void r() {
        a(this.f4910h, this.f4911i).a(4).b();
        com.aggmoread.sdk.z.c.a.a.c.s.d dVar = this.f4522u;
        if (dVar != null) {
            dVar.a();
        }
    }

    protected void s() {
        com.aggmoread.sdk.z.c.a.a.e.e.a("exposure");
        com.aggmoread.sdk.z.c.a.a.e.c.f5216f = null;
        a((com.aggmoread.sdk.z.c.a.a.c.f) this.f4522u);
    }

    protected void t() {
        com.aggmoread.sdk.z.c.a.a.c.s.d dVar = this.f4522u;
        if (dVar != null) {
            dVar.onAdShow();
        }
    }

    protected void u() {
        if (this.f4521t) {
            com.aggmoread.sdk.z.c.a.a.c.g gVar = this.f4910h.f4951g;
            if (gVar instanceof com.aggmoread.sdk.z.c.a.a.c.s.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.s.b) gVar).onAdVideoCached();
            }
        }
    }

    protected abstract void v();

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            b(i10, i11, str);
        }
    }

    protected void b(Activity activity) {
        v();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.s.a
    public void a(Activity activity) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.a()) {
            b(activity);
        } else {
            q.a(new b(activity));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void b(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        this.f4914l.a();
        a(this.f4910h, this.f4911i).a(8).a(jVar).b();
        if (this.f4521t) {
            c(jVar);
        } else {
            if (this.f4911i.l()) {
                return;
            }
            this.f4910h.f4951g.a(jVar);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.s.a
    public void a(com.aggmoread.sdk.z.c.a.a.c.s.d dVar) {
        this.f4522u = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    protected void b(Map<String, Object> map) {
        boolean z10;
        if (map != null) {
            Object obj = map.get(AMConst.REWARD_ERROR_CODE);
            if ((obj instanceof Integer) && 1001007000 == ((Integer) obj).intValue()) {
                z10 = false;
            } else {
                z10 = true;
            }
        } else {
            z10 = true;
        }
        if (z10) {
            a(this.f4910h, this.f4911i).a(7).b();
        }
        if (this.f4518q.compareAndSet(false, true)) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("reward " + this.f4522u);
            com.aggmoread.sdk.z.c.a.a.c.s.d dVar = this.f4522u;
            if (dVar != null) {
                dVar.onReward(map);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }

    protected void a(Map<String, Object> map) {
        a(this.f4910h, this.f4911i).a(1).b();
        com.aggmoread.sdk.z.c.a.a.c.s.d dVar = this.f4522u;
        if (dVar != null) {
            dVar.onVideoComplete();
        }
    }
}
