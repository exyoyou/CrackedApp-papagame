package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.text.TextUtils;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c extends com.aggmoread.sdk.z.c.a.a.d.a.a implements com.aggmoread.sdk.z.c.a.a.c.p.d {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected Map<String, Object> f4461t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.d.a.c f4462u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.p.b f4463v;

    class a implements com.aggmoread.sdk.z.c.a.a.d.b.a.c<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.m f4464a;

        a(com.aggmoread.sdk.z.c.a.a.d.b.m mVar) {
            this.f4464a = mVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.b.a.c
        public void a(String str) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("XXXXX", "title " + str);
            if (!TextUtils.isEmpty(str)) {
                if (com.aggmoread.sdk.z.c.a.a.e.p.m(c.this.f4426j)) {
                    this.f4464a.a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.D, str);
                }
                com.aggmoread.sdk.z.c.a.a.e.p.a(c.this.f4461t, str);
            }
            this.f4464a.b();
            c.this.m();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.a.c f4466b;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f4468b;

            a(String str) {
                this.f4468b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.aggmoread.sdk.z.c.a.a.d.b.a.c cVar = b.this.f4466b;
                if (cVar != null) {
                    cVar.a(this.f4468b);
                }
            }
        }

        b(com.aggmoread.sdk.z.c.a.a.d.b.a.c cVar) {
            this.f4466b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    Thread.sleep(500L);
                    q.a(new a(c.this.getTitle()));
                } catch (Exception e10) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b("XXXXX", "title info err " + e10.getMessage());
                    q.a(new a(null));
                }
            } catch (Throwable th) {
                q.a(new a(null));
                throw th;
            }
        }
    }

    public c(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar);
        this.f4461t = new HashMap();
        if (map != null) {
            a(map);
            map.put(AMConst.ExtrasKey.AD_ID, this.f4423g);
            this.f4461t.putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar;
        if (!com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4426j) || (bVar = this.f4463v) == null) {
            return;
        }
        bVar.onAdExposed();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4426j)) {
            b(i10);
        }
    }

    protected void b(int i10) {
    }

    protected com.aggmoread.sdk.z.c.a.a.d.a.c c() {
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = this.f4462u;
        return cVar != null ? cVar : this.f4425i.f4964t;
    }

    public void d() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar = this.f4463v;
        if (bVar != null) {
            bVar.onADCloseOverlay();
        }
    }

    public void e() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar = this.f4463v;
        if (bVar != null) {
            bVar.onADOpenOverlay();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public String getID() {
        return this.f4423g;
    }

    protected abstract String getTitle();

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4461t);
    }

    public void i() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar;
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4425i, this.f4426j);
        boolean zA = mVarA.a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5176n, this.f4423g).a(this.f4426j, a(), this.f4428l, this.f4431o);
        mVarA.b();
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4431o, false, true);
        if (!zA || (bVar = this.f4463v) == null) {
            return;
        }
        bVar.onAdClicked();
    }

    public void j() {
        a(this.f4425i, this.f4426j).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5176n, this.f4423g).a(4).b();
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar = this.f4463v;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void k() {
        com.aggmoread.sdk.z.c.a.a.e.e.a("exposure");
        p();
    }

    public void l() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar = this.f4463v;
        if (bVar != null) {
            bVar.onADLeftApplication();
        }
    }

    public void n() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar = this.f4463v;
        if (bVar != null) {
            bVar.onRenderFail();
        }
    }

    public void o() {
        com.aggmoread.sdk.z.c.a.a.c.p.b bVar = this.f4463v;
        if (bVar != null) {
            bVar.onRenderSuccess();
        }
    }

    public void p() {
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4425i, this.f4426j).a(6).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4425i, this.f4426j, this.f4461t)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5176n, this.f4423g).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4425i, this.f4426j, this.f4461t));
        if (com.aggmoread.sdk.z.c.a.a.e.p.f()) {
            a(new a(mVarA));
        } else {
            mVarA.b();
            m();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public final void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4426j)) {
            b(i10, i11, str);
        }
    }

    protected void b(int i10, int i11, String str) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void a(com.aggmoread.sdk.z.c.a.a.c.p.a aVar) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void a(com.aggmoread.sdk.z.c.a.a.c.p.b bVar) {
        this.f4463v = bVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4462u = cVar;
    }

    private void a(com.aggmoread.sdk.z.c.a.a.d.b.a.c<String> cVar) {
        q.b(new b(cVar));
    }
}
