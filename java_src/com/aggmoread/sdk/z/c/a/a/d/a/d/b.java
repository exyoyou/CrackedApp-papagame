package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.text.TextUtils;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b extends com.aggmoread.sdk.z.c.a.a.d.a.a implements com.aggmoread.sdk.z.c.a.a.c.o.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected Map<String, Object> f4451t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.c.o.d f4452u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.c.o.b f4453v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.d.a.c f4454w;

    class a implements com.aggmoread.sdk.z.c.a.a.d.b.a.c<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.m f4455a;

        a(com.aggmoread.sdk.z.c.a.a.d.b.m mVar) {
            this.f4455a = mVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.b.a.c
        public void a(String str) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("XXXXX", "title " + str);
            if (!TextUtils.isEmpty(str)) {
                if (com.aggmoread.sdk.z.c.a.a.e.p.m(b.this.f4426j)) {
                    this.f4455a.a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.D, str);
                }
                com.aggmoread.sdk.z.c.a.a.e.p.a(b.this.f4451t, str);
            }
            this.f4455a.b();
            b.this.e();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.b$b, reason: collision with other inner class name */
    class RunnableC0122b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.a.c f4457b;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.b$b$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f4459b;

            a(String str) {
                this.f4459b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.aggmoread.sdk.z.c.a.a.d.b.a.c cVar = RunnableC0122b.this.f4457b;
                if (cVar != null) {
                    cVar.a(this.f4459b);
                }
            }
        }

        RunnableC0122b(com.aggmoread.sdk.z.c.a.a.d.b.a.c cVar) {
            this.f4457b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    Thread.sleep(500L);
                    q.a(new a(b.this.getTitle()));
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

    public b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar);
        this.f4451t = new HashMap();
        if (map != null) {
            a(map);
            map.put(AMConst.ExtrasKey.AD_ID, this.f4423g);
            this.f4451t.putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f4453v == null || !com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4426j)) {
            return;
        }
        this.f4453v.onAdExposed();
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
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = this.f4454w;
        return cVar != null ? cVar : this.f4425i.f4964t;
    }

    public void d() {
        com.aggmoread.sdk.z.c.a.a.e.e.a("exposure");
        i();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public String getID() {
        return this.f4423g;
    }

    protected abstract String getTitle();

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4451t);
    }

    public void i() {
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4425i, this.f4426j).a(6).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5176n, this.f4423g).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4425i, this.f4426j, this.f4451t)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4425i, this.f4426j, this.f4451t));
        if (com.aggmoread.sdk.z.c.a.a.e.p.f()) {
            a(new a(mVarA));
        } else {
            mVarA.b();
            e();
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

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void a(com.aggmoread.sdk.z.c.a.a.c.o.b bVar) {
        this.f4453v = bVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void a(com.aggmoread.sdk.z.c.a.a.c.o.d dVar) {
        this.f4452u = dVar;
    }

    private void a(com.aggmoread.sdk.z.c.a.a.d.b.a.c<String> cVar) {
        q.b(new RunnableC0122b(cVar));
    }
}
