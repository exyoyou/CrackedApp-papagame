package com.efs.sdk.base.core.e.a;

/* JADX INFO: loaded from: classes9.dex */
public final class f extends a {
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        Double d10;
        com.efs.sdk.base.core.config.a.c cVarA = com.efs.sdk.base.core.config.a.c.a();
        String str = bVar.f26341a.f26334a;
        com.efs.sdk.base.core.config.a.b bVar2 = cVarA.f26314d;
        if (com.efs.sdk.base.core.config.a.c.f26311a.nextDouble() * 100.0d <= ((!bVar2.f26307f.containsKey(str) || (d10 = bVar2.f26307f.get(str)) == null) ? 100.0d : d10.doubleValue())) {
            b(bVar);
        }
    }
}
