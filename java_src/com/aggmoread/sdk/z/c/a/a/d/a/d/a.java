package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.view.View;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a extends com.aggmoread.sdk.z.c.a.a.d.b.a implements com.aggmoread.sdk.z.c.a.a.c.n.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f4444q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.c.n.c f4445r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected AtomicBoolean f4446s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Object[] f4447t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4448u;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.a$a, reason: collision with other inner class name */
    class RunnableC0121a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f4449b;

        RunnableC0121a(ArrayList arrayList) {
            this.f4449b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.n.b) a.this.f4910h.f4951g).onAdLoaded(this.f4449b);
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4444q = false;
        this.f4446s = new AtomicBoolean();
        this.f4447t = com.aggmoread.sdk.z.c.a.a.b.b();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            c(i10);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void b(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        com.aggmoread.sdk.z.c.a.a.c.g gVar;
        this.f4914l.a();
        a(this.f4910h, this.f4911i).a(8).a(jVar).b();
        if (this.f4444q) {
            gVar = this.f4445r;
            if (gVar == null) {
                return;
            }
        } else if (this.f4911i.l()) {
            return;
        } else {
            gVar = this.f4910h.f4951g;
        }
        gVar.a(jVar);
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
        com.aggmoread.sdk.z.c.a.a.c.n.c cVar;
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4447t, false, true);
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4910h, this.f4911i);
        com.aggmoread.sdk.z.c.a.a.d.b.f fVar = this.f4911i;
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4448u;
        boolean zA = mVarA.a(fVar, weakReference == null ? null : weakReference.get(), 0L, this.f4447t);
        mVarA.b();
        if (!zA || (cVar = this.f4445r) == null) {
            return;
        }
        cVar.onAdClicked();
    }

    protected void r() {
        a(this.f4910h, this.f4911i).a(4).b();
        com.aggmoread.sdk.z.c.a.a.c.n.c cVar = this.f4445r;
        if (cVar != null) {
            cVar.a();
        }
    }

    protected void s() {
        com.aggmoread.sdk.z.c.a.a.c.n.c cVar = this.f4445r;
        if (cVar != null) {
            cVar.onADCloseOverlay();
        }
    }

    protected void t() {
        com.aggmoread.sdk.z.c.a.a.e.e.a("onAdExposure");
        a((com.aggmoread.sdk.z.c.a.a.c.f) this.f4445r);
    }

    protected void u() {
        com.aggmoread.sdk.z.c.a.a.c.n.c cVar = this.f4445r;
        if (cVar != null) {
            cVar.onADLeftApplication();
        }
    }

    protected void v() {
        this.f4444q = true;
        a(this.f4910h, this.f4911i).a(3).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, this.f4909g)).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, this.f4909g)).b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        if (this.f4910h.f4951g instanceof com.aggmoread.sdk.z.c.a.a.c.n.b) {
            q.a(new RunnableC0121a(arrayList));
        }
    }

    protected void w() {
        com.aggmoread.sdk.z.c.a.a.c.n.c cVar = this.f4445r;
        if (cVar != null) {
            cVar.onADOpenOverlay();
        }
    }

    protected void x() {
        com.aggmoread.sdk.z.c.a.a.c.n.c cVar = this.f4445r;
        if (cVar != null) {
            cVar.onAdShow();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            b(i10, i11, str);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void a(com.aggmoread.sdk.z.c.a.a.c.n.c cVar) {
        this.f4445r = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }

    protected void a(View[] viewArr) {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4448u;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.a("ban apy");
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4910h.f4946b, this.f4447t, com.aggmoread.sdk.z.c.a.a.c.j.BANNER, this.f4448u.get(), viewArr, null, null, Integer.valueOf(this.f4911i.f()));
        com.aggmoread.sdk.z.c.a.a.d.b.n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
        byte[] bArrB = this.f4910h.f4962r.b();
        if (bArrB != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4910h.f4946b, bArrB);
        }
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4447t, true, true);
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4447t, this.f4911i);
    }
}
