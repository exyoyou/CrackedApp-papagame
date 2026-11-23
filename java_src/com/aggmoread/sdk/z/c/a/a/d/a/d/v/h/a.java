package com.aggmoread.sdk.z.c.a.a.d.a.d.v.h;

import android.app.Activity;
import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.f;
import com.aggmoread.sdk.z.c.a.a.d.a.d.g;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.comm.util.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends f {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private UnifiedInterstitialAD f4815t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4816u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private b.a f4817v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final com.aggmoread.sdk.z.c.a.a.c.u.b f4818w;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.h.a$a, reason: collision with other inner class name */
    class C0166a implements b.a {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.h.a$a$a, reason: collision with other inner class name */
        class RunnableC0167a implements Runnable {
            RunnableC0167a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                Object obj = aVar.f4910h.f4946b;
                Object[] objArr = ((f) aVar).f4481r;
                a aVar2 = a.this;
                n.a(obj, objArr, aVar2.f4910h.f4949e, Integer.valueOf(aVar2.f4911i.f()));
                a aVar3 = a.this;
                n.b(aVar3.f4910h.f4946b, aVar3.f4911i.e(), a.this.f4911i.b());
                byte[] bArrB = a.this.f4910h.f4962r.b();
                if (bArrB != null) {
                    n.a(a.this.f4910h.f4946b, bArrB);
                }
                n.a((Object) ((f) a.this).f4481r, true, true);
                n.a(((f) a.this).f4481r, a.this.f4911i);
                n.a(((f) a.this).f4481r, 2);
            }
        }

        C0166a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void a() {
            if (a.this.o()) {
                int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(a.this.f4815t);
                if (com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(a.this.f4911i, iA)) {
                    a.this.a(iA, 0);
                    return;
                }
                a.this.b(iA);
            }
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(aVar.f4909g, aVar.f4815t, a.this.f4911i);
            a.this.u();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void b() {
            a.this.s();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void c() {
            a.this.v();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onADClicked() {
            a.this.r();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onADExposure() {
            a.this.t();
            q.a(new RunnableC0167a(), 1L);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onADLeftApplication() {
            a.this.q();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onNoAD(AdError adError) {
            a.this.b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onRenderFail() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onRenderSuccess() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.i.b.a
        public void onVideoCached() {
            a.this.w();
        }
    }

    public a(e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4816u = new AtomicBoolean();
        this.f4817v = new C0166a();
        this.f4818w = new com.aggmoread.sdk.z.c.a.a.c.u.b.C0120b().b(1).a(1).a(true).b(true).a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        if (this.f4480q && this.f4815t != null && this.f4816u.compareAndSet(false, true)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMFTAGGDT", "show #2 ");
            if (activity == null) {
                super.b();
            } else {
                com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4815t, k());
                this.f4815t.showFullScreenAD(activity);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        d.a(this.f4815t, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f4815t;
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.setMediaListener(null);
            this.f4815t.destroy();
            this.f4815t = null;
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
        Object obj = com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0;
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(context, fVar.a(obj, ""));
        Context contextA = g.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(this.f4911i, this.f4910h);
        this.f4815t = (UnifiedInterstitialAD) d.a(contextA, this.f4911i.f5003c.c(obj), this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0), d.e.FULLSCREEN, this.f4913k, new b(this.f4817v).a(), new Object[0]);
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        if (bVar == null) {
            bVar = this.f4818w;
        }
        this.f4815t.setVideoOption(new VideoOption.Builder().setDetailPageMuted(bVar.e()).setAutoPlayMuted(bVar.d()).setAutoPlayPolicy(bVar.a()).build());
        if (bVar.c() >= 5 && bVar.c() <= 61) {
            this.f4815t.setMinVideoDuration(bVar.c());
        }
        if (bVar.b() >= 5 && bVar.b() <= 61) {
            this.f4815t.setMaxVideoDuration(bVar.b());
        }
        boolean zA = p.a("4.390");
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMFTAGGDT", "reward " + zA);
        if (zA) {
            d.b(this.f4815t, this.f4910h, this.f4911i);
        }
        this.f4480q = false;
        a(this.f4910h, this.f4911i).a(0).b();
        this.f4815t.loadFullScreenAD();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
        this.f4912j = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            a((Activity) context);
        } else {
            super.b();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        d.a(this.f4815t, i11, i10, str);
    }
}
