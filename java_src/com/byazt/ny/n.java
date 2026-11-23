package com.byazt.ny;

import com.byazt.bb.sp;
import com.byazt.eia.a;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 188, 46})
public class n implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f17675c = new a();

    public interface c {
        void c(boolean z10);
    }

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        com.byazt.ppf.ve.c(this.f17675c, cVar.ve(), cVar.tt(), map2);
        sp spVar = new sp(this.f17675c.z(), this.f17675c.getContext(), this.f17675c, map2);
        spVar.c(this.f17675c.i());
        c(spVar, map2, cVar).c(map2);
        return true;
    }

    private com.byazt.bb.ve c(sp spVar, final Map<String, Object> map, final com.byazt.cq.c cVar) {
        a aVar = this.f17675c;
        com.byazt.bb.ve veVar = new com.byazt.bb.ve(spVar, aVar, aVar.i(), this.f17675c.yp(), this.f17675c.getContext(), map, true);
        veVar.tt(this.f17675c.sl());
        veVar.c(this.f17675c.da());
        veVar.c(this.f17675c.t());
        veVar.c(this.f17675c.m());
        veVar.ve(this.f17675c.sp());
        veVar.c(new c() { // from class: com.byazt.ny.n.1
            @Override // com.byazt.ny.n.c
            public void c(boolean z10) {
                if (!z10) {
                    cVar.tt(map, null);
                } else {
                    com.byazt.ppf.ve.c((Map<String, Object>) map, com.byazt.cr.n.ve);
                    cVar.tt(map);
                }
            }
        });
        return veVar;
    }
}
