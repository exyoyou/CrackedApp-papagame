package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.core.util.Log;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends a {
    private static boolean c(com.efs.sdk.base.core.d.b bVar) {
        if (!bVar.b()) {
            com.efs.sdk.base.core.d.a aVar = bVar.f26341a;
            if ((1 != aVar.f26335b || bVar.f26342b.f26345a) && 1 != aVar.f26336c) {
                return false;
            }
        }
        return true;
    }

    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        if (c(bVar)) {
            b(bVar);
            return;
        }
        byte[] bArrA = com.efs.sdk.base.core.util.c.a(bVar.f26343c);
        if (bArrA == null) {
            Log.w("efs.base", "gzip error");
            b(bVar);
        } else {
            bVar.a(bArrA);
            bVar.a("gzip");
            b(bVar);
        }
    }
}
