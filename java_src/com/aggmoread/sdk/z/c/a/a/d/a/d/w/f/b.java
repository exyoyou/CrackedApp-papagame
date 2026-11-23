package com.aggmoread.sdk.z.c.a.a.d.a.d.w.f;

import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.d.a.d.i;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsFeedAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b extends i implements KsLoadManager.FeedAdListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f4857r = "AMEPTAGKS";

    public b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.i
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(obj, i11);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.i
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        if (!com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, ""))) {
            b(new j(1001002008, "广告加载失败！"));
            return;
        }
        int i10 = this.f4910h.f4957m;
        if (i10 < 1) {
            i10 = 1;
        }
        this.f4909g.put("ecpm", this.f4911i.f5002b.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
        try {
            String strC = this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0);
            String strTrim = strC.replace("L", "").trim();
            long j10 = Long.parseLong(strTrim);
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4857r, "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
            KsScene.Builder builder = new KsScene.Builder(j10);
            builder.adNum(Math.min(i10, 5));
            com.aggmoread.sdk.z.c.a.a.c.i iVar = this.f4910h.f4961q;
            if (iVar != null) {
                if (iVar.b() > 0) {
                    builder.width(iVar.b());
                }
                if (iVar.a() > 0) {
                    builder.height(iVar.a());
                }
            }
            KsAdSDK.getLoadManager().loadConfigFeedAd(builder.build(), this);
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4857r, "load ad");
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception unused) {
            b(new j(1001002008, "广告ID配置错误，广告加载失败！"));
        }
    }

    @Override // com.kwad.sdk.api.KsLoadManager.FeedAdListener
    public void onError(int i10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4857r, "onAdError %s,%s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }

    @Override // com.kwad.sdk.api.KsLoadManager.FeedAdListener
    public void onFeedAdLoad(@Nullable List<KsFeedAd> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4857r, "ad loaded");
        List<com.aggmoread.sdk.z.c.a.a.c.p.d> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            int i10 = -1;
            for (KsFeedAd ksFeedAd : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksFeedAd);
                if (q() && com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, iA)) {
                    a(ksFeedAd, 0);
                } else {
                    b(ksFeedAd, com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksFeedAd));
                    arrayList.add(new c(ksFeedAd, this.f4910h, this.f4911i, this.f4909g));
                }
                i10 = iA;
            }
            if (q() && arrayList.size() == 0) {
                a(i10, 0);
                return;
            }
        }
        e(arrayList);
    }
}
