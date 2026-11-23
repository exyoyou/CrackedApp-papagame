package com.aggmoread.sdk.z.c.a.a.d.a.d.s;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class p extends c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.f f4691l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List<o> f4692m;

    public p(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, List<o> list, int i10) {
        this.f4691l = fVar;
        this.f5001a = eVar;
        this.f5002b = new com.aggmoread.sdk.z.c.a.a.e.f(new HashMap(fVar.f5002b.f5230a));
        this.f5004d = fVar.f5004d;
        this.f4692m = list;
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                Map<Object, Object> map = list.get(i11).f4690b;
                if (map != null) {
                    arrayList.add(map);
                }
            }
        }
        Map<Object, Object> map2 = this.f5002b.f5230a;
        Object obj = com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5014a;
        map2.put(obj, arrayList);
        List list2 = (List) this.f5002b.f5230a.get(obj);
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        boolean z10 = false;
        for (int i12 = 0; i12 < list2.size(); i12++) {
            com.aggmoread.sdk.z.c.a.a.e.f fVar2 = new com.aggmoread.sdk.z.c.a.a.e.f((Map) list2.get(i12));
            fVar2.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0);
            if (!z10 && fVar2.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5019c0) > eVar.f4966v) {
                this.f5003c = fVar2;
                this.f5006f = i12;
                z10 = true;
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void a(com.aggmoread.sdk.z.c.a.a.d.b.m mVar) {
        this.f4691l.a(mVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void b(com.aggmoread.sdk.z.c.a.a.d.b.m mVar) {
        this.f4691l.b(mVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public int g() {
        o oVar;
        try {
            List<o> list = this.f4692m;
            if (list != null) {
                int size = list.size();
                int i10 = this.f5006f;
                if (size > i10 && (oVar = this.f4692m.get(i10)) != null) {
                    return oVar.f4689a;
                }
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("ACWFRTAG", "gci err " + e10.getMessage());
        }
        return super.g();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public boolean h() {
        return this.f4691l.h();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void j() {
        this.f4691l.j();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void k() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACWFRTAG", "watter tryEnd " + this.f5001a.f4947c + ", this " + this);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public boolean l() {
        boolean zL = super.l();
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACWFRTAG", "watter tryNextSDK " + zL + ", rid " + this.f5001a.f4947c + ", this " + this);
        if (zL || this.f5001a.f4951g == null) {
            return true;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("ACWFRTAG", "notify tryNextSDK");
        this.f5001a.f4951g.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(-20000, "未匹配到合适的广告"));
        return true;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.f
    public void a(boolean z10) {
        this.f4691l.a(true);
    }
}
