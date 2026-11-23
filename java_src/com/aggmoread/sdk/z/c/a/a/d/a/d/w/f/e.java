package com.aggmoread.sdk.z.c.a.a.d.a.d.w.f;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.d.a.d.l;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsScene;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class e extends l implements KsLoadManager.NativeAdListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f4869r = "AMUTAGKS";

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            e.this.r();
            return false;
        }
    }

    public e(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        int i10 = this.f4910h.f4957m;
        if (i10 < 1) {
            i10 = 1;
        }
        this.f4909g.put("ecpm", this.f4911i.f5002b.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
        try {
            String strC = this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0);
            String strTrim = strC.replace("L", "").trim();
            long j10 = Long.parseLong(strTrim);
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4869r, "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
            KsAdSDK.getLoadManager().loadNativeAd(new KsScene.Builder(j10).adNum(i10).build(), this);
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4869r, "load ad");
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception unused) {
            b(new j(1001002008, "广告ID配置错误，广告加载失败！"));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, ""))) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, this.f4914l, new a());
        } else {
            b(new j(1001002008, "广告加载失败！"));
        }
    }

    @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
    public void onError(int i10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4869r, "onAdError %s,%s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }

    @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
    public void onNativeAdLoad(@Nullable List<KsNativeAd> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4869r, "ad loaded");
        boolean zA = this.f4910h.a("com.sdk.key.ESP", 16);
        List<com.aggmoread.sdk.z.c.a.a.c.p.f> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            int i10 = -1;
            for (KsNativeAd ksNativeAd : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(ksNativeAd);
                if (q() && com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, iA)) {
                    a(ksNativeAd, 0);
                } else {
                    b(ksNativeAd, iA);
                    arrayList.add(zA ? new com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.a(ksNativeAd, this.f4910h, this.f4911i, this.f4909g) : new d(ksNativeAd, this.f4910h, this.f4911i, this.f4909g));
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

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(obj, i11);
    }
}
