package com.aggmoread.sdk.z.c.a.a.d.a.d.v.g;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.d.l;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class f extends l implements g.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f4812s = "AMUTAGGDT";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public NativeUnifiedAD f4813r;

    public f(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
    }

    private void a(Context context) {
        this.f4813r = (NativeUnifiedAD) com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(context, this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, ""), this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0, ""), com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.e.UNIFIED, this.f4913k, new g(this).a(), new Object[0]);
        int i10 = this.f4910h.f4957m;
        if (i10 < 1) {
            i10 = 1;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4812s, "load ad");
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        if (bVar != null) {
            if (bVar.c() >= 5 && bVar.c() <= 61) {
                this.f4813r.setMinVideoDuration(bVar.c());
            }
            if (bVar.b() >= 5 && bVar.b() <= 61) {
                this.f4813r.setMaxVideoDuration(bVar.b());
            }
        }
        this.f4813r.loadData(i10);
        a(this.f4910h, this.f4911i).a(0).b();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.g.a
    public void b(List<NativeUnifiedADData> list) {
        com.aggmoread.sdk.z.c.a.a.c.p.f eVar;
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4812s, "ad loaded");
        int iB = n.b(this.f4910h);
        i();
        if (iB == 9) {
            b(new j(1001006000, "GDT ad blocked"));
            return;
        }
        boolean zA = this.f4910h.a("com.sdk.key.ESP", 16);
        List<com.aggmoread.sdk.z.c.a.a.c.p.f> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            boolean zQ = q();
            boolean zO = o();
            int i10 = -1;
            for (NativeUnifiedADData nativeUnifiedADData : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(nativeUnifiedADData);
                if (!zO) {
                    if (zA) {
                        eVar = new a(nativeUnifiedADData, this.f4813r, this.f4910h, this.f4911i, this.f4909g, iB);
                    } else {
                        eVar = new e(nativeUnifiedADData, this.f4813r, this.f4910h, this.f4911i, this.f4909g, iB);
                    }
                    arrayList.add(eVar);
                } else if (zQ && com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, nativeUnifiedADData)) {
                    a(nativeUnifiedADData, 0);
                } else {
                    b(nativeUnifiedADData, iA);
                    if (zA) {
                        eVar = new a(nativeUnifiedADData, this.f4813r, this.f4910h, this.f4911i, this.f4909g, iB);
                    } else {
                        eVar = new e(nativeUnifiedADData, this.f4813r, this.f4910h, this.f4911i, this.f4909g, iB);
                    }
                    arrayList.add(eVar);
                }
                i10 = iA;
            }
            if (zQ && arrayList.size() == 0) {
                a(i10, 0);
                return;
            }
        }
        e(arrayList);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, ""));
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.g.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, this.f4914l);
        a(contextA);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.g.a
    public void onNoAD(AdError adError) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4812s, "onAdError %s", adError);
        b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(obj, i11, i10, null);
    }
}
