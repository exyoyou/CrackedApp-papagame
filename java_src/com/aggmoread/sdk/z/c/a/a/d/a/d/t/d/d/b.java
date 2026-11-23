package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.d;

import com.aggmoread.sdk.z.c.a.a.c.i;
import com.aggmoread.sdk.z.c.a.a.d.a.d.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.t;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b extends e {

    class a implements TTAdNative.DrawFeedAdListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
        public void onDrawFeedAdLoad(List<TTDrawFeedAd> list) {
            ArrayList arrayList = new ArrayList();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onAdLoaded list = ");
            sb2.append(list == null ? "null" : Integer.valueOf(list.size()));
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", sb2.toString());
            if (list != null && list.size() > 0) {
                for (TTDrawFeedAd tTDrawFeedAd : list) {
                    MediationNativeManager mediationManager = tTDrawFeedAd.getMediationManager();
                    if (mediationManager != null && mediationManager.isExpress()) {
                        b bVar = b.this;
                        arrayList.add(new com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.d.a(tTDrawFeedAd, bVar.f4910h, bVar.f4911i, bVar.f4909g));
                    }
                }
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", "onAdLoaded adList " + arrayList.size());
            b.this.e(arrayList);
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", "onAdLoaded");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
        public void onError(int i10, String str) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", "onAdLoadedFial");
            b.this.b(new j(i10, str));
        }
    }

    public b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
    }

    private void r() {
        int iB;
        int iA;
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", "loadAd");
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        boolean zD = bVar != null ? bVar.d() : false;
        i iVar = this.f4910h.f4961q;
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
        tTAdNativeCreateAdNative.loadDrawFeedAd(adSlotBuild, new a());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", "handleAd");
        boolean zC = com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), this.f4911i.f5003c.c(f.c.f5021d0));
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMDRAWTAGCSJ", "isInit " + zC);
        if (zC) {
            r();
        } else {
            b(new j(1001003005, "csj: MSDK未初始化，请稍后重试!"));
        }
    }
}
