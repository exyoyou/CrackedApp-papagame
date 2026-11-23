package com.aggmoread.sdk.z.c.a.a.d.a.d.q.f;

import android.text.TextUtils;
import com.aggmoread.sdk.z.c.a.a.d.a.d.l;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends l implements com.aggmoread.sdk.z.a.l.a {
    public c(e eVar, f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.a.l.a, com.aggmoread.sdk.z.a.i.h
    public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        b(new j(fVar.a(), fVar.b()));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        try {
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(k.f5147q);
            String strC = this.f4911i.f5003c.c(f.c.f5015a0);
            if (!TextUtils.isEmpty(strC) && strC.contains("nv_")) {
                strC = strC.replace("nv_", "").trim();
            }
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h, this.f4911i).a(strC).e().a((com.aggmoread.sdk.z.a.l.a) this);
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.aggmoread.sdk.z.a.l.a
    public void onAdLoaded(List<com.aggmoread.sdk.z.a.l.c> list) {
        ArrayList arrayList = new ArrayList();
        int iF = -1;
        for (com.aggmoread.sdk.z.a.l.c cVar : list) {
            if (q() && (cVar instanceof com.aggmoread.sdk.z.a.l.d)) {
                iF = ((com.aggmoread.sdk.z.a.l.d) cVar).f();
                if (com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.a(this.f4911i, iF)) {
                }
            }
            arrayList.add(new d(cVar, this.f4910h, this.f4911i, this.f4909g));
        }
        if (q() && arrayList.size() == 0) {
            a(iF, 0);
        } else {
            e(arrayList);
        }
    }
}
