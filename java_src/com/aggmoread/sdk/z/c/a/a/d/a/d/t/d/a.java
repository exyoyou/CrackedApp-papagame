package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d;

import com.aggmoread.sdk.z.c.a.a.d.a.d.t.e.c;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.e.j;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.b.b {
    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public boolean a() {
        return j.a("com.bytedance.sdk.openadsdk.mediation.IMediationManager");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a b(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.c.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a c(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.d.b(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a d(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.f.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a e(e eVar, f fVar) {
        return fVar.f5003c.a(f.c.Z, "2").equalsIgnoreCase("2") ? new c(eVar, fVar) : new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a f(e eVar, f fVar) {
        String strA = fVar.f5003c.a(f.c.Z, "2");
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGGDT", "slotFill is " + strA);
        return strA.equalsIgnoreCase("2") ? new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.f.a(eVar, fVar) : new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.f.b(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a g(e eVar, f fVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGKS", "createMixInformationFlowAdHandler enter ");
        return e(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a h(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.g.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a i(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.h.a(eVar, fVar);
    }
}
