package com.byazt.ny;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 188, 20})
public class c implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.eia.tt f17674c = new com.byazt.eia.tt();

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        com.byazt.ppf.ve.c(this.f17674c, cVar.ve(), map, map2);
        if (!c(map2)) {
            cVar.tt(map2, null);
            return true;
        }
        if (new com.byazt.szt.tt(c(map2, com.byazt.bb.c.uj(map2)), this.f17674c.nu()).c(map2)) {
            com.byazt.ppf.ve.c(map2, com.byazt.cr.tt.ve);
            cVar.tt(map2);
        } else {
            cVar.tt(map2, null);
        }
        return true;
    }

    private com.byazt.bb.c c(Map<String, Object> map, int i10) {
        com.byazt.eia.tt ttVar = this.f17674c;
        com.byazt.bb.uj ujVar = new com.byazt.bb.uj(ttVar, ttVar.getContext(), this.f17674c.x(), this.f17674c.da(), this.f17674c.yp(), this.f17674c.gt(), map, true);
        ujVar.tt(this.f17674c.u());
        ujVar.c(this.f17674c.t(), i10);
        ujVar.c(this.f17674c.i());
        ujVar.c(this.f17674c.sp());
        ujVar.c(this.f17674c.sl());
        ujVar.c(this.f17674c.m());
        ujVar.c(this.f17674c.u_());
        return ujVar;
    }

    private boolean c(Map<String, Object> map) {
        if (com.byazt.ppf.ve.c(this.f17674c, map) == null || this.f17674c.getContext() == null) {
            return false;
        }
        if (TextUtils.isEmpty(this.f17674c.yp())) {
            com.byazt.ete.n nVarZ = this.f17674c.z();
            if (nVarZ != null) {
                this.f17674c.c(nVarZ.tt());
            }
            if (TextUtils.isEmpty(this.f17674c.yp())) {
                return false;
            }
        }
        return (TextUtils.isEmpty(this.f17674c.x()) || this.f17674c.da() == null) ? false : true;
    }
}
