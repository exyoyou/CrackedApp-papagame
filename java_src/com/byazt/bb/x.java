package com.byazt.bb;

import android.content.Context;
import com.byazt.eia.da;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 147, 71})
public class x implements com.byazt.hl.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.cq.c f11901a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.hl.c f11902c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f11903da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.ny.uj.c f11904i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, Object> f11905n;
    public int sp;
    public Context tt;
    public String uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final da f11906x;

    public x(da daVar, Context context, boolean z10, String str, Map<String, Object> map, com.byazt.cq.c cVar, int i10, boolean z11) {
        this.f11906x = daVar;
        this.tt = context;
        this.ve = z10;
        this.uj = str;
        this.f11905n = map;
        this.f11901a = cVar;
        this.sp = i10;
        this.f11903da = z11;
    }

    public void c(com.byazt.ny.uj.c cVar) {
        this.f11904i = cVar;
    }

    @Override // com.byazt.hl.c
    public boolean c(final Map<String, Object> map) {
        boolean z10 = false;
        boolean zC = !com.byazt.wdw.n.c() ? new com.byazt.wdw.n(this.f11906x, this.tt, this.f11903da).c(this.uj).c(this.sp).tt(this.ve).c(this.f11905n).c(new com.byazt.wdw.n.c() { // from class: com.byazt.bb.x.1
            @Override // com.byazt.wdw.n.c
            public void c() {
                if (x.this.f11904i != null) {
                    x.this.f11904i.c(true);
                }
            }

            @Override // com.byazt.wdw.n.c
            public void c(com.byazt.cr.c cVar) {
                if (x.this.f11902c != null ? x.this.f11902c.c(map) : false) {
                    return;
                }
                com.byazt.ppf.ve.c((Map<String, Object>) x.this.f11905n, cVar);
                if (x.this.f11903da) {
                    x.this.f11901a.tt(x.this.f11905n, null);
                } else {
                    x.this.f11901a.c(x.this.f11905n, (com.byazt.qb.c) null);
                }
            }
        }) : false;
        com.byazt.wdw.n.c(false);
        if (zC) {
            return true;
        }
        com.byazt.hl.c cVar = this.f11902c;
        if (cVar != null && cVar.c(map)) {
            z10 = true;
        }
        com.byazt.ny.uj.c cVar2 = this.f11904i;
        if (cVar2 != null) {
            cVar2.c(z10);
        }
        return z10;
    }
}
