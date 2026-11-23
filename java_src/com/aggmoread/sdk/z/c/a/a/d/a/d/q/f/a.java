package com.aggmoread.sdk.z.c.a.a.d.a.d.q.f;

import android.text.TextUtils;
import android.view.View;
import com.aggmoread.sdk.z.c.a.a.d.a.d.i;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends i implements com.aggmoread.sdk.z.a.k.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final HashMap<com.aggmoread.sdk.z.a.k.c, b> f4552r;

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.f4552r = new HashMap<>();
    }

    @Override // com.aggmoread.sdk.z.a.i.h
    public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        b(new j(fVar.a(), fVar.b()));
    }

    @Override // com.aggmoread.sdk.z.a.k.a
    public void b(com.aggmoread.sdk.z.a.k.c cVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("APIEXPRESSHTAG", "onADExposure");
        b bVar = this.f4552r.get(cVar);
        if (bVar != null) {
            System.currentTimeMillis();
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = bVar.a();
            n.a((View) aVarA, bVar.f4431o);
            n.a(this.f4910h.f4946b, bVar.f4431o, com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW, aVarA, new View[0], new WeakReference(aVarA), null);
            n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
            byte[] bArrB = this.f4910h.f4962r.b();
            if (bArrB != null) {
                n.a(this.f4910h.f4946b, bArrB);
            }
            n.a((Object) bVar.f4431o, true, true);
            n.a(bVar.f4431o, this.f4911i);
            bVar.k();
        }
    }

    @Override // com.aggmoread.sdk.z.a.k.a
    public void c(com.aggmoread.sdk.z.a.k.c cVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("APIEXPRESSHTAG", "onADClicked");
        b bVar = this.f4552r.get(cVar);
        if (bVar != null) {
            bVar.i();
        }
    }

    @Override // com.aggmoread.sdk.z.a.k.a
    public void d(com.aggmoread.sdk.z.a.k.c cVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("APIEXPRESSHTAG", "onADClosed");
        b bVar = this.f4552r.get(cVar);
        if (bVar != null) {
            bVar.j();
        }
        this.f4552r.remove(bVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        try {
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(k.f5147q);
            String strC = this.f4911i.f5003c.c(f.c.f5015a0);
            if (!TextUtils.isEmpty(strC) && strC.contains("ex_")) {
                strC = strC.replace("ex_", "").trim();
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("APIEXPRESSHTAG", "slot id " + strC);
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h, this.f4911i).a(strC).e().a((com.aggmoread.sdk.z.a.k.a) this);
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.aggmoread.sdk.z.a.k.a
    public void onAdLoaded(List<com.aggmoread.sdk.z.a.k.c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            int iB = -1;
            for (com.aggmoread.sdk.z.a.k.c cVar : list) {
                if (q() && (cVar instanceof com.aggmoread.sdk.z.a.k.b)) {
                    iB = ((com.aggmoread.sdk.z.a.k.b) cVar).b();
                    if (com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.a(this.f4911i, iB)) {
                    }
                }
                b bVar = new b(cVar, this.f4910h, this.f4911i, this.f4909g);
                arrayList.add(bVar);
                this.f4552r.put(cVar, bVar);
            }
            if (q() && arrayList.size() == 0) {
                a(iB, 0);
                return;
            }
        }
        e(arrayList);
    }

    @Override // com.aggmoread.sdk.z.a.k.a
    public void a(com.aggmoread.sdk.z.a.k.c cVar) {
        b bVar = this.f4552r.get(cVar);
        if (bVar != null) {
            bVar.o();
        }
    }

    @Override // com.aggmoread.sdk.z.a.k.a
    public void a(com.aggmoread.sdk.z.a.k.c cVar, com.aggmoread.sdk.z.a.g.f fVar) {
        b bVar = this.f4552r.get(cVar);
        this.f4552r.remove(bVar);
        if (bVar != null) {
            bVar.n();
        }
    }
}
