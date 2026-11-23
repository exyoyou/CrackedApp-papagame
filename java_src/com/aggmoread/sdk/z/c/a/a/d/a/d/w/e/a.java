package com.aggmoread.sdk.z.c.a.a.d.a.d.w.e;

import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.c.i;
import com.aggmoread.sdk.z.c.a.a.d.a.d.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends e implements KsLoadManager.DrawAdListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f4852r = "AMDRAWTAGKS";

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.e
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(obj, i11);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.e
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        if (!com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(f.c.f5023e0, ""))) {
            b(new j(1001002008, "广告加载失败！"));
            return;
        }
        int i10 = this.f4910h.f4957m;
        if (i10 < 1) {
            i10 = 1;
        }
        this.f4909g.put("ecpm", this.f4911i.f5002b.a(f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
        try {
            String strC = this.f4911i.f5003c.c(f.c.f5015a0);
            String strTrim = strC.replace("L", "").trim();
            long j10 = Long.parseLong(strTrim);
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4852r, "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
            KsScene.Builder builder = new KsScene.Builder(j10);
            builder.adNum(Math.min(i10, 5));
            i iVar = this.f4910h.f4961q;
            if (iVar != null) {
                if (iVar.b() > 0) {
                    builder.width(iVar.b());
                }
                if (iVar.a() > 0) {
                    builder.height(iVar.a());
                }
            }
            KsAdSDK.getLoadManager().loadDrawAd(builder.build(), this);
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4852r, "load ad");
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception unused) {
            b(new j(1001002008, "广告ID配置错误，广告加载失败！"));
        }
    }

    @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
    public void onDrawAdLoad(@Nullable List<KsDrawAd> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4852r, "ad loaded");
        List<com.aggmoread.sdk.z.c.a.a.c.o.a> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            int i10 = -1;
            for (KsDrawAd ksDrawAd : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksDrawAd);
                if (q() && com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, iA)) {
                    a(ksDrawAd, 0);
                } else {
                    b(ksDrawAd, com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksDrawAd));
                    arrayList.add(new b(ksDrawAd, this.f4910h, this.f4911i, this.f4909g));
                }
                i10 = iA;
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4852r, "ad loaded size " + arrayList.size());
            if (q() && arrayList.size() == 0) {
                a(i10, 0);
                return;
            }
        }
        e(arrayList);
    }

    @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
    public void onError(int i10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4852r, "onAdError %s,%s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }
}
