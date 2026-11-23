package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.core.controller.ControllerCenter;

/* JADX INFO: loaded from: classes9.dex */
public final class b extends a {
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        com.efs.sdk.base.core.b.e eVarA;
        byte[] bArr;
        if (bVar.f26342b.f26345a) {
            b(bVar);
            return;
        }
        com.efs.sdk.base.core.b.a aVar = com.efs.sdk.base.core.b.a.b.f26250a;
        if ("wa".equals(bVar.f26341a.f26334a) || com.efs.sdk.base.core.b.c.a().f26252a) {
            com.efs.sdk.base.core.d.a aVar2 = bVar.f26341a;
            if ((aVar2.f26336c == 0 && ((bArr = bVar.f26343c) == null || bArr.length == 0)) || (eVarA = aVar.f26248c.a(aVar2.f26335b)) == null) {
                return;
            }
            eVarA.a(bVar);
            return;
        }
        if (!aVar.f26246a) {
            com.efs.sdk.base.core.f.f fVar = com.efs.sdk.base.core.f.f.a.f26372a;
            int i10 = com.efs.sdk.base.core.config.a.c.a().f26314d.f26302a;
            if (fVar.f26369b != null || ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
                fVar.f26369b.send(fVar.a("disk_limit", i10));
            }
        }
        aVar.f26246a = true;
    }
}
