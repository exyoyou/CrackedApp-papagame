package com.aggmoread.sdk.z.c.a.a.d.a.d.r.g;

import android.app.Activity;
import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.d.h;
import com.aggmoread.sdk.z.c.a.a.d.a.d.r.c;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends h {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ExpressInterstitialAd f4623t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4624u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private c.j f4625v;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.g.a$a, reason: collision with other inner class name */
    class C0137a implements c.j {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.g.a$a$a, reason: collision with other inner class name */
        class RunnableC0138a implements Runnable {

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.g.a$a$a$a, reason: collision with other inner class name */
            class RunnableC0139a implements Runnable {
                RunnableC0139a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    n.a(((h) a.this).f4499r, 2);
                }
            }

            RunnableC0138a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                Object obj = aVar.f4910h.f4946b;
                Object[] objArr = ((h) aVar).f4499r;
                a aVar2 = a.this;
                n.a(obj, objArr, aVar2.f4910h.f4949e, Integer.valueOf(aVar2.f4911i.f()));
                a aVar3 = a.this;
                n.b(aVar3.f4910h.f4946b, aVar3.f4911i.e(), a.this.f4911i.b());
                byte[] bArrB = a.this.f4910h.f4962r.b();
                if (bArrB != null) {
                    n.a(a.this.f4910h.f4946b, bArrB);
                }
                n.a((Object) ((h) a.this).f4499r, true, true);
                n.a(((h) a.this).f4499r, a.this.f4911i);
                q.a(new RunnableC0139a(), BaseCloudFileManager.ACK_TIMEOUT);
            }
        }

        C0137a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void a(int i10, String str) {
            e.b("AMITAGBD", "onNoAD " + i10 + ", " + str);
            a.this.b(new j(i10, str));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void b() {
            e.b("AMITAGBD", "onAdCacheFailed");
            a.this.b(new j(-1000, "视频素材缓存失败"));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void c() {
            e.b("AMITAGBD", "onLpClosed");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void d() {
            e.b("AMITAGBD", "onAdCacheSuccess");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void f() {
            e.b("AMITAGBD", "onADReceive");
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) a.this.f4623t);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(a.this.f4911i, iA)) {
                a.this.a(iA, 0);
                return;
            }
            a.this.b(iA);
            if (!com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a("9.373")) {
                ((h) a.this).f4498q = true;
                return;
            }
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(aVar.f4909g, com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) aVar.f4623t), a.this.f4911i);
            a.this.u();
            a.this.w();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void g() {
            e.b("AMITAGBD", "onADExposureFailed");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void onADExposed() {
            e.b("AMITAGBD", "onADExposure");
            a.this.v();
            a.this.t();
            q.a(new RunnableC0138a(), 1L);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void onAdClick() {
            e.b("AMITAGBD", "onADClicked");
            a.this.r();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void onAdClose() {
            e.b("AMITAGBD", "onADClosed");
            a.this.s();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void onVideoDownloadFailed() {
            e.b("AMITAGBD", "onVideoDownloadFailed");
            a.this.b(new j(-1000, "视频素材缓存失败"));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void onVideoDownloadSuccess() {
            e.b("AMITAGBD", "onVideoDownloadSuccess");
            if (((h) a.this).f4498q) {
                a aVar = a.this;
                com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(aVar.f4909g, com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) aVar.f4623t), a.this.f4911i);
                a.this.u();
                a.this.w();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.j
        public void b(int i10, String str) {
            e.b("AMITAGBD", "onAdFailed " + i10 + ", " + str);
            a.this.b(new j(i10, str));
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f4629b;

        b(Activity activity) {
            this.f4629b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f4623t != null) {
                a.this.f4623t.show(this.f4629b);
            }
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4624u = new AtomicBoolean();
        this.f4625v = new C0137a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        e.b("AMITAGBD", "show()");
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            a((Activity) context);
        } else {
            super.b();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        e.c("win " + i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4623t, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        ExpressInterstitialAd expressInterstitialAd = this.f4623t;
        if (expressInterstitialAd != null) {
            expressInterstitialAd.destroy();
            this.f4623t = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a().a(this.f4623t);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        String strA = this.f4911i.f5003c.a(f.c.f5023e0, "");
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA, strA);
        ExpressInterstitialAd expressInterstitialAd = new ExpressInterstitialAd(contextA.getApplicationContext(), this.f4911i.f5003c.c(f.c.f5015a0));
        this.f4623t = expressInterstitialAd;
        expressInterstitialAd.setLoadListener(c.a().a(this.f4625v));
        this.f4623t.setAppSid(strA);
        this.f4498q = false;
        a(this.f4910h, this.f4911i).a(0).b();
        try {
            RequestParameters.Builder builder = new RequestParameters.Builder();
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4623t, builder.build());
        } catch (Exception unused) {
        }
        this.f4623t.load();
        e.b("AMITAGBD", "load enter");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        e.b("AMITAGBD", "show #2 activity = " + activity);
        if (this.f4498q && this.f4623t != null && this.f4624u.compareAndSet(false, true)) {
            e.b("AMITAGBD", "show #2 ");
            if (activity == null) {
                super.b();
                return;
            }
            try {
                activity.getWindow().getDecorView().post(new b(activity));
            } catch (Exception e10) {
                e.b("AMITAGBD", "show #3 " + e10.getMessage());
                ExpressInterstitialAd expressInterstitialAd = this.f4623t;
                if (expressInterstitialAd != null) {
                    expressInterstitialAd.show(activity);
                }
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4623t, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }
}
