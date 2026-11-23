package com.cmic.gen.sdk.c.a;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f24338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.cmic.gen.sdk.c.d.c f24339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.cmic.gen.sdk.c.b f24340c = new com.cmic.gen.sdk.c.b();

    public void b(final com.cmic.gen.sdk.c.c.c cVar, final com.cmic.gen.sdk.c.d.c cVar2, final com.cmic.gen.sdk.a aVar) {
        if (this.f24338a != null) {
            this.f24339b = new com.cmic.gen.sdk.c.d.c() { // from class: com.cmic.gen.sdk.c.a.c.1
                @Override // com.cmic.gen.sdk.c.d.c
                public void a(com.cmic.gen.sdk.c.d.b bVar) {
                    if (bVar.d()) {
                        c.this.b(c.this.f24340c.a(cVar, bVar, aVar), cVar2, aVar);
                    } else if (TextUtils.isEmpty(c.this.f24340c.a())) {
                        cVar2.a(bVar);
                    } else {
                        c.this.b(c.this.f24340c.b(cVar, bVar, aVar), cVar2, aVar);
                    }
                }

                @Override // com.cmic.gen.sdk.c.d.c
                public void a(com.cmic.gen.sdk.c.d.a aVar2) {
                    if (cVar.j()) {
                        com.cmic.gen.sdk.e.c.a("RetryAndRedirectInterceptor", "retry: " + cVar.a());
                        c.this.b(cVar, cVar2, aVar);
                        return;
                    }
                    cVar2.a(aVar2);
                }
            };
            if (cVar.g()) {
                this.f24338a.a(cVar, this.f24339b, aVar);
            } else {
                cVar2.a(com.cmic.gen.sdk.c.d.a.a(200025));
            }
        }
    }

    @Override // com.cmic.gen.sdk.c.a.b
    public void a(com.cmic.gen.sdk.c.c.c cVar, com.cmic.gen.sdk.c.d.c cVar2, com.cmic.gen.sdk.a aVar) {
        b(cVar, cVar2, aVar);
    }

    public void a(b bVar) {
        this.f24338a = bVar;
    }
}
