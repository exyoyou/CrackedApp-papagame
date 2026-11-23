package com.aggmoread.sdk.z.c.a.a.d.a.d.v.i;

import android.app.Activity;
import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.c.g;
import com.aggmoread.sdk.z.c.a.a.c.m;
import com.aggmoread.sdk.z.c.a.a.d.a.d.h;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.comm.util.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends h {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private UnifiedInterstitialAD f4821t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4822u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f4823v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a f4824w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a f4825x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final com.aggmoread.sdk.z.c.a.a.c.u.b f4826y;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.a$a, reason: collision with other inner class name */
    class C0168a implements com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.a$a$a, reason: collision with other inner class name */
        class RunnableC0169a implements Runnable {

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.a$a$a$a, reason: collision with other inner class name */
            class RunnableC0170a implements Runnable {
                RunnableC0170a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    n.a(((h) a.this).f4499r, 2);
                }
            }

            RunnableC0169a() {
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
                q.a(new RunnableC0170a(), 500L);
            }
        }

        C0168a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void a() {
            e.b("AMITAGGDT", "onADReceive");
            if (a.this.o()) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(a.this.f4821t);
                if (com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(a.this.f4911i, iA)) {
                    a.this.a(iA, 0);
                    a.this.f4823v = false;
                    return;
                }
                a.this.b(iA);
            }
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(aVar.f4909g, aVar.f4821t, a.this.f4911i);
            if (a.this.f4823v) {
                return;
            }
            a.this.u();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void b() {
            e.b("AMITAGGDT", "onADClosed");
            a.this.s();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void c() {
            e.b("AMITAGGDT", "onADOpened");
            a.this.v();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onADClicked() {
            e.b("AMITAGGDT", "onADClicked");
            a.this.r();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onADExposure() {
            e.b("AMITAGGDT", "onADExposure");
            a.this.t();
            q.a(new RunnableC0169a(), 1L);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onADLeftApplication() {
            e.b("AMITAGGDT", "onADLeftApplication");
            a.this.q();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onNoAD(AdError adError) {
            e.b("AMITAGGDT", "onNoAD");
            a.this.b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onRenderFail() {
            e.b("AMITAGGDT", "onRenderFail");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onRenderSuccess() {
            e.b("AMITAGGDT", "onRenderSuccess");
            if (a.this.f4823v) {
                if (a.this.o()) {
                    if (com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(a.this.f4911i, com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(a.this.f4821t))) {
                        return;
                    }
                }
                e.b("AMITAGGDT", "onRenderSuccess notify");
                a.this.u();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onVideoCached() {
            e.b("AMITAGGDT", "onVideoCached");
            a.this.w();
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.a$b$a, reason: collision with other inner class name */
        class RunnableC0171a implements Runnable {
            RunnableC0171a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ((m) a.this.f4910h.f4952h).b();
            }
        }

        b() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void a(long j10) {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).a(j10);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void b() {
            if (a.this.f4910h.f4952h instanceof m) {
                q.a(new RunnableC0171a(), 2L);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void c() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).c();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void onVideoComplete() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoComplete();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void onVideoError(AdError adError) {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                gVar.a(new j(adError.getErrorCode(), adError.getErrorMsg()));
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void onVideoInit() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoInit();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void onVideoLoading() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoLoading();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void onVideoPause() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoPause();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c.a
        public void onVideoStart() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoStart();
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f4832b;

        c(Activity activity) {
            this.f4832b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f4821t != null) {
                a.this.f4821t.show(this.f4832b);
            }
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4822u = new AtomicBoolean();
        this.f4823v = true;
        this.f4824w = new C0168a();
        this.f4825x = new b();
        this.f4826y = new com.aggmoread.sdk.z.c.a.a.c.u.b.C0120b().b(1).a(1).a(true).b(true).a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        e.b("AMITAGGDT", "show #2 activity = " + activity);
        if (this.f4498q && this.f4821t != null && this.f4822u.compareAndSet(false, true)) {
            e.b("AMITAGGDT", "show #2 ");
            if (activity == null) {
                super.b();
                return;
            }
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4821t, k());
            try {
                activity.getWindow().getDecorView().post(new c(activity));
            } catch (Exception e10) {
                e.b("AMITAGGDT", "show #3 " + e10.getMessage());
                UnifiedInterstitialAD unifiedInterstitialAD = this.f4821t;
                if (unifiedInterstitialAD != null) {
                    unifiedInterstitialAD.show(activity);
                }
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        d.a(this.f4821t, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f4821t;
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.setMediaListener(null);
            this.f4821t.destroy();
            this.f4821t = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(this.f4910h);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        Context context = this.f4910h.f4948d;
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5023e0;
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(context, fVar.a(obj, ""));
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.g.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(this.f4911i, this.f4910h);
        UnifiedInterstitialAD unifiedInterstitialAD = (UnifiedInterstitialAD) d.a(contextA, this.f4911i.f5003c.c(obj), this.f4911i.f5003c.c(f.c.f5015a0), d.e.INTERSTITIAL, this.f4913k, new com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b(this.f4824w).a(), new Object[0]);
        this.f4821t = unifiedInterstitialAD;
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c cVar = new com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.c(this.f4825x);
        if (this.f4910h.f4952h != null) {
            unifiedInterstitialAD.setMediaListener(cVar.a());
        }
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        if (bVar == null) {
            bVar = this.f4826y;
        }
        this.f4821t.setVideoOption(new VideoOption.Builder().setDetailPageMuted(bVar.e()).setAutoPlayMuted(bVar.d()).setAutoPlayPolicy(bVar.a()).build());
        if (bVar.c() >= 5 && bVar.c() <= 61) {
            this.f4821t.setMinVideoDuration(bVar.c());
        }
        if (bVar.b() >= 5 && bVar.b() <= 61) {
            this.f4821t.setMaxVideoDuration(bVar.b());
        }
        this.f4498q = false;
        this.f4823v = p.a("4.371");
        a(this.f4910h, this.f4911i).a(0).b();
        this.f4821t.loadAD();
        e.b("AMITAGGDT", "load enter");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        if (!(this.f4910h.f4948d instanceof Activity)) {
            super.b();
            return;
        }
        if (this.f4498q && this.f4821t != null && this.f4822u.compareAndSet(false, true)) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4821t, k());
            e.b("AMITAGGDT", "show #1 ");
            this.f4821t.show();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        d.a(this.f4821t, i11, i10, str);
    }
}
