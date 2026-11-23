package com.byazt.ny;

import com.byazt.bb.x;
import com.byazt.cr.a;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 188, 15})
public class uj implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.eia.uj f17679c = new com.byazt.eia.uj();

    public interface c {
        void c(boolean z10);
    }

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        com.byazt.ppf.ve.c(this.f17679c, cVar.ve(), cVar.tt(), map2);
        if (c(map2)) {
            c(map2, cVar).c(new HashMap());
            return true;
        }
        com.byazt.ppf.ve.c(map2, a.uj);
        cVar.tt(map2, null);
        return true;
    }

    private x c(final Map<String, Object> map, final com.byazt.cq.c cVar) {
        com.byazt.eia.uj ujVar = this.f17679c;
        x xVar = new x(ujVar, ujVar.getContext(), this.f17679c.tt(), this.f17679c.ve(), map, cVar, this.f17679c.uj(), true);
        xVar.c(new c() { // from class: com.byazt.ny.uj.1
            @Override // com.byazt.ny.uj.c
            public void c(boolean z10) {
                if (!z10) {
                    cVar.tt(map, null);
                } else {
                    com.byazt.ppf.ve.c((Map<String, Object>) map, a.ve);
                    cVar.tt(map);
                }
            }
        });
        return xVar;
    }

    private boolean c(Map<String, Object> map) {
        return (com.byazt.ppf.ve.c(this.f17679c, map) == null || this.f17679c.getContext() == null || this.f17679c.A_() == null) ? false : true;
    }
}
