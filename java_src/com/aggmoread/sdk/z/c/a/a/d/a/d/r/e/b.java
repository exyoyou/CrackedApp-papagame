package com.aggmoread.sdk.z.c.a.a.d.a.d.r.e;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.d.i;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b extends i {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static String f4594t = "AMEPTAGBD";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public BaiduNativeManager f4595r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private BaiduNativeManager.ExpressAdListener f4596s;

    class a implements com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h
        public void a(int i10, String str, ExpressResponse expressResponse) {
            com.aggmoread.sdk.z.c.a.a.e.e.a(b.f4594t, "onAdError %d, %s", Integer.valueOf(i10), str);
            b.this.b(new j(i10, str));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h
        public void b(int i10, String str, ExpressResponse expressResponse) {
            com.aggmoread.sdk.z.c.a.a.e.e.a(b.f4594t, "onAdError %d, %s", Integer.valueOf(i10), str);
            b.this.b(new j(i10, str));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h
        public void c() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(b.f4594t, "onLpClosed");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h
        public void onVideoDownloadFailed() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(b.f4594t, "onVideoDownloadFailed");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h
        public void onVideoDownloadSuccess() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(b.f4594t, "onVideoDownloadSuccess");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.h
        public void a(List<ExpressResponse> list) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(b.f4594t, "ad loaded");
            ArrayList arrayList = new ArrayList();
            if (list != null && list.size() > 0) {
                int i10 = -1;
                for (ExpressResponse expressResponse : list) {
                    int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) expressResponse);
                    if (b.this.q() && com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(b.this.f4911i, iA)) {
                        b.this.a(expressResponse, 0);
                    } else {
                        b.this.b(expressResponse, iA);
                        b bVar = b.this;
                        arrayList.add(new c(expressResponse, bVar.f4910h, bVar.f4911i, bVar.f4909g));
                    }
                    i10 = iA;
                }
                if (b.this.q() && arrayList.size() == 0) {
                    b.this.a(i10, 0);
                    return;
                }
            }
            b.this.e(arrayList);
        }
    }

    public b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4596s = com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.a().a(new a());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.i
    protected void c(Object obj, int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(obj, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        String strA = this.f4911i.f5003c.a(f.c.f5023e0, "");
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA, strA);
        BaiduNativeManager baiduNativeManager = new BaiduNativeManager(contextA, this.f4911i.f5003c.a(f.c.f5015a0, ""));
        this.f4595r = baiduNativeManager;
        baiduNativeManager.setAppSid(strA);
        int i10 = this.f4910h.f4957m;
        com.aggmoread.sdk.z.c.a.a.e.e.b(f4594t, "load ad");
        a(this.f4910h, this.f4911i).a(0).b();
        RequestParameters.Builder builder = new RequestParameters.Builder();
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
        this.f4595r.loadExpressAd(builder.build(), this.f4596s);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.i
    protected void a(Object obj, int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(obj, "203");
    }
}
