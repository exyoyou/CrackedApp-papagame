package com.aggmoread.sdk.z.c.a.a.d.a.d.u.c;

import com.aggmoread.sdk.z.a.l.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.l;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends l implements com.aggmoread.sdk.z.a.l.a {
    public a(e eVar, f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.a.l.a, com.aggmoread.sdk.z.a.i.h
    public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        b(new j(fVar.a(), fVar.b()));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        try {
            com.aggmoread.sdk.z.c.a.a.d.a.d.u.b.c().a(k.f5147q);
            com.aggmoread.sdk.z.c.a.a.d.a.d.u.b.c().a(this.f4910h, this.f4911i).a(this.f4911i.f5003c.c(f.c.f5015a0)).e().a((com.aggmoread.sdk.z.a.l.a) this);
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.aggmoread.sdk.z.a.l.a
    public void onAdLoaded(List<c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            Iterator<c> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new b(it2.next(), this.f4910h, this.f4911i, this.f4909g));
            }
        }
        e(arrayList);
    }
}
