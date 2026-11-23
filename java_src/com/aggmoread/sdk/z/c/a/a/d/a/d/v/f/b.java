package com.aggmoread.sdk.z.c.a.a.d.a.d.v.f;

import android.content.Context;
import android.view.View;
import com.aggmoread.sdk.z.c.a.a.c.i;
import com.aggmoread.sdk.z.c.a.a.c.j;
import com.aggmoread.sdk.z.c.a.a.d.a.d.e;
import com.aggmoread.sdk.z.c.a.a.d.a.d.g;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
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
public class b extends e implements com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static String f4796u = "AMDRAWTAGGDT";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public NativeExpressAD f4797r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f4798s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final HashMap<NativeExpressADView, a> f4799t;

    public b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4799t = new HashMap<>();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void a(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADClosed");
        a aVar = this.f4799t.get(nativeExpressADView);
        a(this.f4910h, this.f4911i).a(4).b();
        if (aVar != null && aVar.j() != null) {
            aVar.j().a();
        }
        this.f4799t.remove(aVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void b(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onRenderSuccess");
        a aVar = this.f4799t.get(nativeExpressADView);
        if (aVar == null || aVar.j() == null) {
            return;
        }
        aVar.j().onRenderSuccess();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void c(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADExposure");
        a aVar = this.f4799t.get(nativeExpressADView);
        if (aVar != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = aVar.a();
            n.a((View) aVarA, aVar.f4431o);
            n.a(this.f4910h.f4946b, aVar.f4431o, j.INFORMATION_FLOW, aVarA, new View[0], new WeakReference(aVarA), null);
            n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
            byte[] bArrB = this.f4910h.f4962r.b();
            if (bArrB != null) {
                n.a(this.f4910h.f4946b, bArrB);
            }
            this.f4798s = System.currentTimeMillis();
            n.a((Object) aVar.f4431o, true, true);
            n.a(aVar.f4431o, this.f4911i);
            aVar.d();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void d(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADCloseOverlay");
        a aVar = this.f4799t.get(nativeExpressADView);
        if (aVar == null || aVar.j() == null) {
            return;
        }
        aVar.j().onADCloseOverlay();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void e(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADLeftApplication");
        a aVar = this.f4799t.get(nativeExpressADView);
        if (aVar == null || aVar.j() == null) {
            return;
        }
        aVar.j().onADLeftApplication();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void f(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onRenderFail");
        a aVar = this.f4799t.get(nativeExpressADView);
        this.f4799t.remove(aVar);
        if (aVar == null || aVar.j() == null) {
            return;
        }
        aVar.j().onRenderFail();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void g(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADOpenOverlay");
        a aVar = this.f4799t.get(nativeExpressADView);
        if (aVar == null || aVar.j() == null) {
            return;
        }
        aVar.j().onADOpenOverlay();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void h(NativeExpressADView nativeExpressADView) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADClicked");
        a aVar = this.f4799t.get(nativeExpressADView);
        m mVarA = a(this.f4910h, this.f4911i);
        if (aVar != null) {
            boolean zA = mVarA.a(m.d.f5176n, aVar.f4423g).a(this.f4911i, aVar.a(), this.f4798s, aVar.f4431o);
            mVarA.b();
            n.a((Object) aVar.f4431o, false, true);
            if (!zA || aVar.j() == null) {
                return;
            }
            aVar.j().onAdClicked();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        Context context = this.f4910h.f4948d;
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5023e0;
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(context, fVar.a(obj, ""));
        Context contextA = g.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, this.f4914l);
        i iVar = this.f4910h.f4961q;
        ADSize aDSize = new ADSize(iVar.b(), iVar.a());
        NativeExpressAD nativeExpressAD = (NativeExpressAD) d.a(contextA, this.f4911i.f5003c.c(obj), this.f4911i.f5003c.c(f.c.f5015a0), d.e.EXPRESS, this.f4913k, new com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b(this).a(), aDSize);
        this.f4797r = nativeExpressAD;
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        if (bVar != null) {
            nativeExpressAD.setVideoOption(new VideoOption.Builder().setAutoPlayPolicy(bVar.a()).setAutoPlayMuted(bVar.d()).setDetailPageMuted(bVar.e()).build());
            if (bVar.c() >= 5 && bVar.c() <= 61) {
                this.f4797r.setMinVideoDuration(bVar.c());
            }
            if (bVar.b() >= 5 && bVar.b() <= 61) {
                this.f4797r.setMaxVideoDuration(bVar.b());
            }
        }
        a(this.f4910h, this.f4911i).a(0).b();
        this.f4797r.loadAD(this.f4910h.f4957m);
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "load");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void onNoAD(AdError adError) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onNoAD");
        b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.e
    protected void a(Object obj, int i10, int i11) {
        d.a(obj, i11, i10, null);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.g.b.a
    public void b(List<NativeExpressADView> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4796u, "onADLoaded");
        List<com.aggmoread.sdk.z.c.a.a.c.o.a> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            boolean zQ = q();
            boolean zO = o();
            int i10 = -1;
            for (NativeExpressADView nativeExpressADView : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(nativeExpressADView);
                if (!zO) {
                    a aVar = new a(nativeExpressADView, this.f4910h, this.f4911i, this.f4909g);
                    arrayList.add(aVar);
                    this.f4799t.put(nativeExpressADView, aVar);
                } else if (zQ && com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, nativeExpressADView.getBoundData())) {
                    a(nativeExpressADView, 0);
                } else {
                    b(nativeExpressADView, iA);
                    a aVar2 = new a(nativeExpressADView, this.f4910h, this.f4911i, this.f4909g);
                    arrayList.add(aVar2);
                    this.f4799t.put(nativeExpressADView, aVar2);
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

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.e
    protected void c(Object obj, int i10) {
        d.a(obj, i10);
    }
}
