package com.byazt.bb;

import android.content.Context;
import com.byazt.eia.i;
import com.byazt.ete.yp;
import com.byazt.xs.da;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 147, 13})
public class tt implements com.byazt.hl.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, Object> f11879a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f11880c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.cq.c f11881n;
    public Context tt;
    public com.byazt.hl.c uj;
    public String ve;

    public tt(com.byazt.hl.c cVar, Context context, i iVar, String str, Map<String, Object> map, com.byazt.cq.c cVar2) {
        this.uj = cVar;
        this.tt = context;
        this.f11880c = iVar;
        this.ve = str;
        this.f11881n = cVar2;
        this.f11879a = map;
    }

    @Override // com.byazt.hl.c
    public boolean c(final Map<String, Object> map) {
        yp ypVarMy;
        if (this.f11880c.n() == 9 && Objects.equals(this.f11879a.get("saas_status_while_click"), 2)) {
            ypVarMy = this.f11880c.D_() != null ? this.f11880c.D_().tt() : null;
        } else {
            ypVarMy = this.f11880c.my();
        }
        if (!com.byazt.wdw.ve.c(ypVarMy, false)) {
            com.byazt.hl.c cVar = this.uj;
            return cVar != null && cVar.c(map);
        }
        if (da.n(com.byazt.ppf.ve.c(this.f11880c, this.f11879a))) {
            com.byazt.hl.c cVar2 = this.uj;
            return cVar2 != null && cVar2.c(map);
        }
        if (da.uj(com.byazt.ppf.ve.c(this.f11880c, this.f11879a))) {
            com.byazt.hl.c cVar3 = this.uj;
            return cVar3 != null && cVar3.c(map);
        }
        new com.byazt.wdw.ve(this.f11880c, ypVarMy, this.tt, this.f11879a).c(this.ve).c(new com.byazt.wdw.ve.c() { // from class: com.byazt.bb.tt.1
            @Override // com.byazt.wdw.ve.c
            public void c() {
                if (tt.this.uj.c(map)) {
                    return;
                }
                tt.this.f11881n.c(tt.this.f11879a, (com.byazt.qb.c) null);
            }
        });
        return true;
    }
}
