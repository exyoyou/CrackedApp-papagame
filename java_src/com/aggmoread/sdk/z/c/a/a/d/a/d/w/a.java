package com.aggmoread.sdk.z.c.a.a.d.a.d.w;

import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.e.j;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.b.b {
    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public boolean a() {
        return j.a("com.kwad.sdk.api.KsAdSDK");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a c(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.w.e.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a d(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a e(e eVar, f fVar) {
        String strA = fVar.f5003c.a(f.c.Z, "2");
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGKS", "slotFill is " + strA);
        return strA.equalsIgnoreCase("2") ? new com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.e(eVar, fVar) : new com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.b(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a f(e eVar, f fVar) {
        String strA = fVar.f5003c.a(f.c.Z, "2");
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGGDT", "slotFill is " + strA);
        return strA.equalsIgnoreCase("2") ? new com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.a(eVar, fVar) : new com.aggmoread.sdk.z.c.a.a.d.a.d.w.h.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a g(e eVar, f fVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGKS", "createMixInformationFlowAdHandler enter ");
        return e(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a h(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.w.i.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a i(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.w.j.a(eVar, fVar);
    }
}
