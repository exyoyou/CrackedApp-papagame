package com.aggmoread.sdk.z.c.a.a.d.a.d.r.e;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.d.l;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class e extends l implements com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f4614s = "AMUTAGBD";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public BaiduNativeManager f4615r;

    public e(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void a(int i10, String str, NativeResponse nativeResponse) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4614s, "onAdError %d, %s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void b(int i10, String str, NativeResponse nativeResponse) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4614s, "onNoAd %d, %s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void c() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4614s, "onLpClosed");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        String strA = this.f4911i.f5003c.a(f.c.f5023e0, "");
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA, strA);
        BaiduNativeManager baiduNativeManager = new BaiduNativeManager(contextA, this.f4911i.f5003c.a(f.c.f5015a0, ""));
        this.f4615r = baiduNativeManager;
        baiduNativeManager.setAppSid(strA);
        int i10 = this.f4910h.f4957m;
        RequestParameters.Builder builder = new RequestParameters.Builder();
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4614s, "load ad");
        a(this.f4910h, this.f4911i).a(0).b();
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
        this.f4615r.loadFeedAd(builder.build(), com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.a().a(this));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void onVideoDownloadFailed() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4614s, "onVideoDownloadFailed");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void onVideoDownloadSuccess() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4614s, "onVideoDownloadSuccess");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(obj, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.l
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void a(List<NativeResponse> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4614s, "ad loaded");
        boolean zA = this.f4910h.a("com.sdk.key.ESP", 16);
        List<com.aggmoread.sdk.z.c.a.a.c.p.f> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            int iA = -1;
            for (NativeResponse nativeResponse : list) {
                iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(nativeResponse);
                if (q() && com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4911i, iA)) {
                    a(nativeResponse, 0);
                } else {
                    b(nativeResponse, iA);
                    arrayList.add(zA ? new a(nativeResponse, this.f4615r, this.f4910h, this.f4911i, this.f4909g) : new d(nativeResponse, this.f4615r, this.f4910h, this.f4911i, this.f4909g));
                }
            }
            if (q() && arrayList.size() == 0) {
                a(iA, 0);
                return;
            }
        }
        e(arrayList);
    }
}
