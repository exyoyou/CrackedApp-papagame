package com.efs.sdk.base.core.c;

import androidx.annotation.NonNull;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.http.HttpResponse;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements c {
    @Override // com.efs.sdk.base.core.c.c
    @NonNull
    public final HttpResponse a(com.efs.sdk.base.core.d.b bVar, boolean z10) {
        HttpResponse httpResponseA;
        com.efs.sdk.base.core.a.c cVarA = com.efs.sdk.base.core.a.c.a();
        com.efs.sdk.base.core.d.a aVar = bVar.f26341a;
        cVarA.f26235d = aVar.f26337d;
        cVarA.f26236e = aVar.f26338e;
        cVarA.f26238g = aVar.f26335b;
        cVarA.f26239h = aVar.f26334a;
        cVarA.f26244m = bVar.a();
        String strA = com.efs.sdk.base.core.config.a.c.a().a(false);
        int i10 = bVar.f26341a.f26336c;
        if (i10 == 0) {
            com.efs.sdk.base.core.a.a aVarA = com.efs.sdk.base.core.a.a.a();
            byte[] bArr = bVar.f26343c;
            boolean z11 = bVar.f26342b.f26346b;
            String strB = cVarA.b();
            String strA2 = com.efs.sdk.base.core.a.a.a(strA, cVarA);
            if (aVarA.f26229a) {
                Log.i("efs.px.api", "upload buffer file, url is ".concat(String.valueOf(strA2)));
            }
            HashMap map = new HashMap(1);
            map.put("wpk-header", strB);
            com.efs.sdk.base.core.util.a.d dVarA = new com.efs.sdk.base.core.util.a.d(strA2).a(map);
            com.efs.sdk.base.core.util.a.b bVar2 = dVarA.f26392a;
            bVar2.f26386c = bArr;
            bVar2.f26390g = true;
            com.efs.sdk.base.core.util.a.d dVarA2 = dVarA.a("type", cVarA.f26239h);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cVarA.f26244m);
            httpResponseA = dVarA2.a("size", sb2.toString()).a("flow_limit", Boolean.toString(z11)).a(com.efs.sdk.base.core.a.d.a()).a().b();
        } else {
            httpResponseA = 1 == i10 ? com.efs.sdk.base.core.a.a.a().a(strA, cVarA, bVar.f26344d, bVar.f26342b.f26346b) : new HttpResponse();
        }
        if (httpResponseA.succ && z10) {
            com.efs.sdk.base.core.util.b.b(bVar.f26344d);
        }
        return httpResponseA;
    }
}
