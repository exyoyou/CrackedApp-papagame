package com.aggmoread.sdk.z.a.f;

import android.view.View;
import com.aggmoread.sdk.z.a.g.d;
import com.aggmoread.sdk.z.a.g.f;
import com.aggmoread.sdk.z.a.g.h;
import com.aggmoread.sdk.z.a.m.l;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.f.a f3336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c.a.b f3337o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c f3338p;

    class a implements b.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a.b f3339a;

        a(com.aggmoread.sdk.z.a.g.c.a.b bVar) {
            this.f3339a = bVar;
        }

        @Override // com.aggmoread.sdk.z.a.f.b.l
        public void a() {
            if (c.this.f3336n != null) {
                c.this.f3336n.a(c.this);
            }
            com.aggmoread.sdk.z.a.g.c.a.b bVar = this.f3339a;
            if (bVar != null) {
                com.aggmoread.sdk.z.a.q.a.a("onAdExposure", bVar.s());
            }
        }

        @Override // com.aggmoread.sdk.z.a.f.b.l
        public void b() {
            if (c.this.f3336n != null) {
                c.this.f3336n.d(c.this);
            }
        }

        @Override // com.aggmoread.sdk.z.a.f.b.l
        public void c() {
            c.this.j();
            if (c.this.f3336n != null) {
                c.this.f3336n.b(c.this);
            }
        }

        @Override // com.aggmoread.sdk.z.a.f.b.l
        public void onRenderSuccess() {
            if (c.this.f3336n != null) {
                c.this.f3336n.c(c.this);
            }
        }

        @Override // com.aggmoread.sdk.z.a.f.b.l
        public void a(String str) {
            if (c.this.f3336n != null) {
                c.this.f3336n.a(c.this, new f(50003, str));
            }
        }
    }

    public c(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.f.a aVar) {
        super(cVar.e().l());
        this.f3336n = aVar;
        this.f3337o = bVar;
        this.f3338p = cVar;
        a(bVar);
    }

    private d i() {
        com.aggmoread.sdk.z.a.s.a aVar = this.f3321m;
        return aVar != null ? aVar.a() : new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f3337o.r(), i());
        View viewA = this.f3316h;
        if (viewA == null) {
            viewA = a();
        }
        l.a(viewA, this.f3338p, this.f3337o, i(), this.f3336n);
    }

    @Override // com.aggmoread.sdk.z.a.f.b
    public View a() {
        return super.a();
    }

    @Override // com.aggmoread.sdk.z.a.f.b
    public int b() {
        return this.f3337o.f3408t;
    }

    @Override // com.aggmoread.sdk.z.a.f.b
    public String c() {
        return this.f3337o.a();
    }

    private void a(com.aggmoread.sdk.z.a.g.c.a.b bVar) {
        if (bVar != null) {
            h hVar = new h();
            hVar.f3460a = bVar.k();
            List<String> listG = bVar.g();
            if (listG != null && listG.size() > 0) {
                hVar.f3464e = listG.get(0);
            }
            hVar.f3463d = bVar.a();
            hVar.f3465f = this.f3338p.e().j();
            hVar.f3467h = this.f3338p.e().o();
            a(hVar);
        }
        a(new a(bVar));
    }
}
