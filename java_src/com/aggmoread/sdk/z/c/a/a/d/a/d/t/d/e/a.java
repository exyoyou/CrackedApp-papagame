package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e;

import android.view.View;
import com.aggmoread.sdk.z.c.a.a.c.j;
import com.aggmoread.sdk.z.c.a.a.d.a.d.i;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.t;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends i {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f4719r;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.a$a, reason: collision with other inner class name */
    class C0149a implements TTAdNative.NativeExpressAdListener {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.a$a$a, reason: collision with other inner class name */
        class C0150a implements b.InterfaceC0152b {
            C0150a() {
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b.InterfaceC0152b
            public void a(b bVar) {
                e.b("AMEPTAGCSJ", "onRenderSuccess ");
                if (bVar != null) {
                    bVar.o();
                }
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b.InterfaceC0152b
            public void b(b bVar) {
                e.b("AMEPTAGCSJ", "onShow ");
                if (bVar.q()) {
                    a.this.f4719r = System.currentTimeMillis();
                    com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = bVar.a();
                    n.a((View) aVarA, bVar.f4431o);
                    n.a(a.this.f4910h.f4946b, bVar.f4431o, j.INFORMATION_FLOW, aVarA, new View[0], new WeakReference(aVarA), null);
                    a aVar = a.this;
                    n.b(aVar.f4910h.f4946b, aVar.f4911i.e(), a.this.f4911i.b());
                    byte[] bArrB = a.this.f4910h.f4962r.b();
                    if (bArrB != null) {
                        n.a(a.this.f4910h.f4946b, bArrB);
                    }
                    n.a((Object) bVar.f4431o, true, true);
                    n.a(bVar.f4431o, a.this.f4911i);
                    bVar.k();
                }
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b.InterfaceC0152b
            public void c(b bVar) {
                e.b("AMEPTAGCSJ", "onClick ");
                if (bVar != null) {
                    bVar.i();
                }
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b.InterfaceC0152b
            public void d(b bVar) {
                e.b("AMEPTAGCSJ", "onDiskSelectedClosed ");
                if (bVar != null) {
                    bVar.j();
                }
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b.InterfaceC0152b
            public void a(b bVar, String str, int i10) {
                e.b("AMEPTAGCSJ", "onRenderFail ");
                if (bVar != null) {
                    bVar.n();
                }
            }
        }

        C0149a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onError(int i10, String str) {
            e.b("AMEPTAGCSJ", "onAdLoadedFial");
            a.this.b(new com.aggmoread.sdk.z.c.a.a.d.b.j(i10, str));
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
            ArrayList arrayList = new ArrayList();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onAdLoaded list = ");
            sb2.append(list == null ? "null" : Integer.valueOf(list.size()));
            e.b("AMEPTAGCSJ", sb2.toString());
            if (list != null && list.size() > 0) {
                for (TTNativeExpressAd tTNativeExpressAd : list) {
                    a aVar = a.this;
                    arrayList.add(new b(tTNativeExpressAd, aVar.f4910h, aVar.f4911i, aVar.f4909g, new C0150a()));
                }
            }
            e.b("AMEPTAGCSJ", "onAdLoaded adList " + arrayList.size());
            a.this.e(arrayList);
            e.b("AMEPTAGCSJ", "onAdLoaded");
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
    }

    private void r() {
        int iB;
        int iA;
        e.b("AMEPTAGCSJ", "loadAd");
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        boolean zD = bVar != null ? bVar.d() : false;
        com.aggmoread.sdk.z.c.a.a.c.i iVar = this.f4910h.f4961q;
        if (iVar != null) {
            iB = iVar.b();
            iA = this.f4910h.f4961q.a();
        } else {
            iB = 0;
            iA = 0;
        }
        if (iB < 1) {
            iB = t.b(this.f4910h.f4948d);
        }
        TTAdNative tTAdNativeCreateAdNative = TTAdSdk.getAdManager().createAdNative(this.f4910h.f4948d);
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(this.f4911i.f5003c.c(f.c.f5015a0)).setImageAcceptedSize(iB, iA).setAdCount(Math.max(1, Math.min(3, this.f4910h.f4957m))).setMediationAdSlot(new MediationAdSlot.Builder().setMuted(zD).build()).build();
        a(this.f4910h, this.f4911i).a(0).b();
        tTAdNativeCreateAdNative.loadNativeExpressAd(adSlotBuild, new C0149a());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        e.b("AMEPTAGCSJ", "handleAd");
        boolean zC = com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), this.f4911i.f5003c.c(f.c.f5021d0));
        e.b("AMEPTAGCSJ", "isInit " + zC);
        if (zC) {
            r();
        } else {
            b(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, "csj: MSDK未初始化，请稍后重试!"));
        }
    }
}
