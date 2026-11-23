package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.http.HttpResponse;

/* JADX INFO: loaded from: classes9.dex */
public final class e extends a {
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        HttpResponse httpResponseA;
        if (!bVar.f26342b.f26345a) {
            b(bVar);
            return;
        }
        com.efs.sdk.base.core.c.d dVarA = com.efs.sdk.base.core.c.d.a();
        if (!bVar.f26342b.f26346b || com.efs.sdk.base.core.c.b.a().a(bVar.f26341a.f26334a, bVar.a())) {
            com.efs.sdk.base.core.f.f.a.f26372a.f26370c.b();
            com.efs.sdk.base.core.f.f.a.f26372a.f26370c.c();
            httpResponseA = dVarA.f26268b.a(bVar, false);
        } else {
            httpResponseA = new HttpResponse();
            httpResponseA.data = "flow_limit";
        }
        bVar.f26342b.f26347c = httpResponseA;
        b(bVar);
    }
}
