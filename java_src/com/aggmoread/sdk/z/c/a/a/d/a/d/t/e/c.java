package com.aggmoread.sdk.z.c.a.a.d.a.d.t.e;

import com.aggmoread.sdk.z.c.a.a.d.a.d.l;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.t;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends l implements TTAdNative.FeedAdListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public TTAdNative f4756r;

    public c(e eVar, f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.b.a(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), null);
        this.f4756r = com.aggmoread.sdk.z.c.a.a.d.a.d.t.c.a().createAdNative(this.f4910h.f4948d);
        int iB = t.b(this.f4910h.f4948d);
        int i10 = (int) (((double) iB) * 0.75d);
        if (i10 < 1) {
            i10 = 1;
        }
        this.f4756r.loadFeedAd(new AdSlot.Builder().setCodeId(this.f4911i.f5003c.c(f.c.f5015a0)).setSupportDeepLink(true).setAdCount(Math.max(1, Math.min(3, this.f4910h.f4957m))).setImageAcceptedSize(iB, i10).build(), this);
        a(this.f4910h, this.f4911i).a(0).b();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
    public void onError(int i10, String str) {
        b(new j(i10, str));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
    public void onFeedAdLoad(List<TTFeedAd> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("XXX", "ad loaded");
        boolean zA = this.f4910h.a("com.sdk.key.ESP", 16);
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            int i10 = -1;
            for (TTFeedAd tTFeedAd : list) {
                int iB = com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.b(tTFeedAd);
                if (!q() || !com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.a(this.f4911i, tTFeedAd)) {
                    arrayList.add(zA ? new a(tTFeedAd, this.f4910h, this.f4911i, this.f4909g) : new b(tTFeedAd, this.f4910h, this.f4911i, this.f4909g));
                }
                i10 = iB;
            }
            if (q() && arrayList.size() == 0) {
                a(i10, 0);
                return;
            }
        }
        e(arrayList);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected boolean q() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.a(this.f4911i);
    }
}
