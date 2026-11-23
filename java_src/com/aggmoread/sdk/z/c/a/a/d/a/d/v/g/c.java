package com.aggmoread.sdk.z.c.a.a.d.a.d.v.g;

import android.content.Context;
import android.view.View;
import com.aggmoread.sdk.z.c.a.a.c.j;
import com.aggmoread.sdk.z.c.a.a.d.a.d.i;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends i implements b.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static String f4801t = "AMEPTAGGDT";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public NativeExpressAD f4802r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final HashMap<NativeExpressADView, d> f4803s;

    public c(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4803s = new HashMap<>();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void a(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADClosed");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            dVar.j();
            this.f4803s.remove(dVar);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void b(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onRenderSuccess");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            dVar.o();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void c(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADExposure");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = dVar.a();
            n.a((View) aVarA, dVar.f4431o);
            n.a(this.f4910h.f4946b, dVar.f4431o, j.INFORMATION_FLOW, aVarA, new View[0], new WeakReference(aVarA), null);
            n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
            byte[] bArrB = this.f4910h.f4962r.b();
            if (bArrB != null) {
                n.a(this.f4910h.f4946b, bArrB);
            }
            System.currentTimeMillis();
            n.a((Object) dVar.f4431o, true, true);
            n.a(dVar.f4431o, this.f4911i);
            dVar.k();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void d(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADCloseOverlay");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void e(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADLeftApplication");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            dVar.l();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void f(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onRenderFail");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            this.f4803s.remove(dVar);
            dVar.n();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void g(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADOpenOverlay");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            dVar.e();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void h(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADClicked");
        d dVar = this.f4803s.get(nativeExpressADView);
        if (dVar != null) {
            dVar.i();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        Context context = this.f4910h.f4948d;
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0;
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(context, fVar.a(obj, ""));
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.g.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.c.i iVar = this.f4910h.f4961q;
        ADSize aDSize = new ADSize(iVar.b(), iVar.a());
        NativeExpressAD nativeExpressAD = (NativeExpressAD) com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(contextA, this.f4911i.f5003c.c(obj), this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0), com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.e.EXPRESS, this.f4913k, new b(this).a(), aDSize);
        this.f4802r = nativeExpressAD;
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        if (bVar != null) {
            nativeExpressAD.setVideoOption(new VideoOption.Builder().setAutoPlayPolicy(bVar.a()).setAutoPlayMuted(bVar.d()).setDetailPageMuted(bVar.e()).build());
            if (bVar.c() >= 5 && bVar.c() <= 61) {
                this.f4802r.setMinVideoDuration(bVar.c());
            }
            if (bVar.b() >= 5 && bVar.b() <= 61) {
                this.f4802r.setMaxVideoDuration(bVar.b());
            }
        }
        a(this.f4910h, this.f4911i).a(0).b();
        this.f4802r.loadAD(this.f4910h.f4957m);
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "load");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void onNoAD(AdError adError) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onNoAD");
        b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.i
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(obj, i11, i10, null);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void b(List<NativeExpressADView> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4801t, "onADLoaded");
        List<com.aggmoread.sdk.z.c.a.a.c.p.d> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            boolean zQ = q();
            boolean zO = o();
            int i10 = -1;
            for (NativeExpressADView nativeExpressADView : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(nativeExpressADView);
                if (!zO) {
                    d dVar = new d(nativeExpressADView, this.f4910h, this.f4911i, this.f4909g);
                    arrayList.add(dVar);
                    this.f4803s.put(nativeExpressADView, dVar);
                } else if (zQ && com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, nativeExpressADView.getBoundData())) {
                    a(nativeExpressADView, 0);
                } else {
                    b(nativeExpressADView, iA);
                    d dVar2 = new d(nativeExpressADView, this.f4910h, this.f4911i, this.f4909g);
                    arrayList.add(dVar2);
                    this.f4803s.put(nativeExpressADView, dVar2);
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

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.i
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(obj, i10);
    }
}
