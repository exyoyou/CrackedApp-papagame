package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.Constants;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.processor.action.ILogEncryptAction;

/* JADX INFO: loaded from: classes9.dex */
public final class d extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ILogEncryptAction f26350b;

    public d() {
        if (ControllerCenter.getGlobalEnvStruct().getLogEncryptAction() == null) {
            this.f26350b = new com.efs.sdk.base.core.e.b();
        } else {
            this.f26350b = ControllerCenter.getGlobalEnvStruct().getLogEncryptAction();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        boolean z10;
        com.efs.sdk.base.core.d.a aVar = bVar.f26341a;
        if (!(1 != aVar.f26338e) && !"wa".equals(aVar.f26334a) && !Constants.LOG_TYPE_STARTPERF.equals(bVar.f26341a.f26334a)) {
            com.efs.sdk.base.core.d.a aVar2 = bVar.f26341a;
            z10 = (1 == aVar2.f26335b && !bVar.f26342b.f26345a) || 1 == aVar2.f26336c;
        }
        if (z10) {
            b(bVar);
            return;
        }
        byte[] bArrEncrypt = this.f26350b.encrypt(ControllerCenter.getGlobalEnvStruct().getSecret(), bVar.f26343c);
        if (bArrEncrypt != null) {
            bVar.a(bArrEncrypt);
            bVar.a(this.f26350b.getDeVal());
        }
        b(bVar);
    }
}
