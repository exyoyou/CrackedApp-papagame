package com.aggmoread.sdk.z.c.a.a.d.a.d.r.d;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.d.e;
import com.aggmoread.sdk.z.c.a.a.d.a.d.r.c;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b extends e implements c.i {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f4592s = "AMDRAWTAGBD";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public BaiduNativeManager f4593r;

    public b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void a(int i10, String str, NativeResponse nativeResponse) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4592s, "onAdError %d, %s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void b(int i10, String str, NativeResponse nativeResponse) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(f4592s, "onNoAd %d, %s", Integer.valueOf(i10), str);
        b(new j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void c() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4592s, "onLpClosed");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        String strA = this.f4911i.f5003c.a(f.c.f5023e0, "");
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA, strA);
        BaiduNativeManager baiduNativeManager = new BaiduNativeManager(contextA, this.f4911i.f5003c.a(f.c.f5015a0, ""));
        this.f4593r = baiduNativeManager;
        baiduNativeManager.setAppSid(strA);
        int i10 = this.f4910h.f4957m;
        RequestParameters.Builder builder = new RequestParameters.Builder();
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4592s, "load ad");
        a(this.f4910h, this.f4911i).a(0).b();
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
        this.f4593r.loadPortraitVideoAd(builder.build(), c.a().a(this));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void onVideoDownloadFailed() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4592s, "onVideoDownloadFailed");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void onVideoDownloadSuccess() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4592s, "onVideoDownloadSuccess");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.e
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(obj, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.e
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.i
    public void a(List<NativeResponse> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4592s, "ad loaded");
        List<com.aggmoread.sdk.z.c.a.a.c.o.a> arrayList = new ArrayList<>();
        if (list != null && list.size() > 0) {
            int i10 = -1;
            for (NativeResponse nativeResponse : list) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(nativeResponse);
                if (q() && com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4911i, iA)) {
                    a(nativeResponse, 0);
                } else {
                    b(nativeResponse, iA);
                    arrayList.add(new a(nativeResponse, this.f4910h, this.f4911i, this.f4909g));
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
