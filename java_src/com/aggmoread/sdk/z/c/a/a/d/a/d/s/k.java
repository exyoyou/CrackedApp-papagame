package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

/* JADX INFO: loaded from: classes7.dex */
public class k extends c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.f f4685l;

    public k(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, com.aggmoread.sdk.z.c.a.a.e.f fVar2, int i10) {
        this.f4685l = fVar;
        this.f5001a = fVar.f5001a;
        this.f5002b = fVar.f5002b;
        this.f5006f = i10;
        this.f5004d = fVar.f5004d;
        this.f5003c = fVar2;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void a(com.aggmoread.sdk.z.c.a.a.d.b.m mVar) {
        this.f4685l.a(mVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void b(com.aggmoread.sdk.z.c.a.a.d.b.m mVar) {
        this.f4685l.b(mVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public boolean h() {
        return this.f4685l.h();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void j() {
        this.f4685l.j();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void k() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public boolean l() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACWFRTAG", "con tryNextSDK , rid " + this.f5001a.f4947c + ", listener0 " + this.f5001a.f4951g);
        com.aggmoread.sdk.z.c.a.a.c.g gVar = this.f5001a.f4951g;
        if (gVar == null) {
            return true;
        }
        gVar.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(-20000, "未匹配到合适的广告"));
        return true;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void a(boolean z10) {
        this.f4685l.a(true);
    }
}
