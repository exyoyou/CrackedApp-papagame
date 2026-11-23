package com.aggmoread.sdk.z.c.a.a.d.a.d.v;

import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.e.j;

/* JADX INFO: loaded from: classes7.dex */
public class c extends com.aggmoread.sdk.z.c.a.a.d.b.b {
    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public boolean a() {
        return j.a("com.qq.e.comm.managers.GDTAdSdk") || j.a("com.qq.e.comm.managers.GDTADManager");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a b(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.b(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a c(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.v.f.b(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a d(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.v.h.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a e(e eVar, f fVar) {
        String strA = fVar.f5003c.a(f.c.Z, "2");
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGGDT", "slotFill is " + strA);
        return strA.equalsIgnoreCase("2") ? new com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.f(eVar, fVar) : new com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.c(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a f(e eVar, f fVar) {
        String strA = fVar.f5003c.a(f.c.Z, "2");
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTAGGDT", "slotFill is " + strA);
        return strA.equalsIgnoreCase("2") ? new com.aggmoread.sdk.z.c.a.a.d.a.d.v.h.a(eVar, fVar) : new com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a g(e eVar, f fVar) {
        return e(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a h(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.v.j.a(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.b
    public com.aggmoread.sdk.z.c.a.a.d.b.a i(e eVar, f fVar) {
        return new com.aggmoread.sdk.z.c.a.a.d.a.d.v.k.a(eVar, fVar);
    }
}
