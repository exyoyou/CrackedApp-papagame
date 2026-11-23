package com.byazt.ny;

import com.byazt.bb.a;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 188, 54})
public class ve implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.eia.n f17681c = new com.byazt.eia.n();

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        int iVe;
        com.byazt.ppf.ve.c(this.f17681c, cVar.ve(), map, map2);
        if (!c(map2)) {
            cVar.tt(map2, null);
            return true;
        }
        if (this.f17681c.gu() != -1001) {
            iVe = this.f17681c.gu();
        } else {
            iVe = com.byazt.apd.tt.c().ve();
            this.f17681c.c(iVe);
            com.byazt.ppf.ve.c(this.f17681c, map2).iu(iVe);
        }
        map2.put("saas_status_while_click", Integer.valueOf(iVe));
        com.byazt.eia.n nVar = this.f17681c;
        a aVar = new a(nVar, nVar.getContext(), this.f17681c.tt(), this.f17681c.ve(), map2);
        if (this.f17681c.sp() != -1) {
            aVar.tt(this.f17681c.sp());
        }
        aVar.c(this.f17681c.x());
        aVar.tt(this.f17681c.i());
        if (!new com.byazt.bb.tt(new com.byazt.bb.n(aVar, com.byazt.ppf.ve.c(this.f17681c, map2), cVar, map2, this.f17681c.tt()), this.f17681c.getContext(), com.byazt.ppf.ve.c(this.f17681c, map2), this.f17681c.tt(), map2, cVar).c(new HashMap())) {
            cVar.tt(map2, null);
            return false;
        }
        com.byazt.ppf.ve.c(map2, com.byazt.cr.uj.ve);
        cVar.tt(map2);
        return false;
    }

    private boolean c(Map<String, Object> map) {
        return (com.byazt.ppf.ve.c(this.f17681c, map) == null || this.f17681c.getContext() == null) ? false : true;
    }
}
