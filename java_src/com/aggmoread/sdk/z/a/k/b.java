package com.aggmoread.sdk.z.a.k;

import android.view.View;
import com.aggmoread.sdk.z.a.g.d;
import com.aggmoread.sdk.z.a.g.f;
import com.aggmoread.sdk.z.a.g.h;
import com.aggmoread.sdk.z.a.m.l;
import com.baidu.mobads.sdk.api.IAdInterListener;

/* JADX INFO: loaded from: classes7.dex */
public class b extends c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.k.a f3641n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c.a.b f3642o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.c f3643p;

    class a implements c.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a.b f3644a;

        a(com.aggmoread.sdk.z.a.g.c.a.b bVar) {
            this.f3644a = bVar;
        }

        @Override // com.aggmoread.sdk.z.a.k.c.k
        public void a() {
            if (b.this.f3641n != null) {
                b.this.f3641n.b(b.this);
            }
            com.aggmoread.sdk.z.a.g.c.a.b bVar = this.f3644a;
            if (bVar != null) {
                com.aggmoread.sdk.z.a.q.a.a("onAdExposure", bVar.s());
            }
        }

        @Override // com.aggmoread.sdk.z.a.k.c.k
        public void b() {
            if (b.this.f3641n != null) {
                b.this.f3641n.d(b.this);
            }
        }

        @Override // com.aggmoread.sdk.z.a.k.c.k
        public void c() {
            b.this.j();
            if (b.this.f3641n != null) {
                b.this.f3641n.c(b.this);
            }
        }

        @Override // com.aggmoread.sdk.z.a.k.c.k
        public void onRenderSuccess() {
            if (b.this.f3641n != null) {
                b.this.f3641n.a(b.this);
            }
        }

        @Override // com.aggmoread.sdk.z.a.k.c.k
        public void a(String str) {
            if (b.this.f3641n != null) {
                b.this.f3641n.a(b.this, new f(50003, str));
            }
        }
    }

    public b(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.k.a aVar) {
        super(cVar.e().l());
        this.f3641n = aVar;
        this.f3642o = bVar;
        this.f3643p = cVar;
        a(bVar);
    }

    private d i() {
        com.aggmoread.sdk.z.a.s.a aVar = this.f3650e;
        return aVar != null ? aVar.a() : new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.aggmoread.sdk.z.a.q.a.a(IAdInterListener.AdCommandType.AD_CLICK, this.f3642o.r(), i());
        View viewA = this.f3653h;
        if (viewA == null) {
            viewA = a();
        }
        l.a(viewA, this.f3643p, this.f3642o, i(), this.f3641n);
    }

    @Override // com.aggmoread.sdk.z.a.k.c
    public View a() {
        return super.a();
    }

    @Override // com.aggmoread.sdk.z.a.k.c
    public int b() {
        return this.f3642o.f3408t;
    }

    @Override // com.aggmoread.sdk.z.a.k.c
    public String c() {
        return this.f3642o.a();
    }

    private void a(com.aggmoread.sdk.z.a.g.c.a.b bVar) {
        if (bVar != null) {
            h hVar = new h();
            hVar.f3460a = bVar.k();
            hVar.f3464e = bVar.f();
            hVar.f3463d = bVar.a();
            hVar.f3465f = this.f3643p.e().j();
            hVar.f3467h = this.f3643p.e().o();
            a(hVar);
        }
        a(new a(bVar));
    }
}
