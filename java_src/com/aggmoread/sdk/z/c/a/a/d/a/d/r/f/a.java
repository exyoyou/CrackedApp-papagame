package com.aggmoread.sdk.z.c.a.a.d.a.d.r.f;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends f {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FullScreenVideoAd f4616t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4617u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private FullScreenVideoAd.FullScreenVideoAdListener f4618v;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.f.a$a, reason: collision with other inner class name */
    class C0135a implements FullScreenVideoAd.FullScreenVideoAdListener {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.f.a$a$a, reason: collision with other inner class name */
        class RunnableC0136a implements Runnable {
            RunnableC0136a() {
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
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.f.a$a$b */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                n.a(((f) a.this).f4481r, 2);
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.f.a$a$c */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                n.a(((f) a.this).f4481r, 2);
            }
        }

        C0135a() {
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdClick() {
            e.b("AMFTAGBD", "onADClicked");
            a.this.r();
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdClose(float f10) {
            e.b("AMFTAGBD", "onADClosed playScale = " + f10);
            a.this.s();
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdFailed(String str) {
            e.b("AMFTAGBD", "failed " + str);
            a.this.b(new j(-1000, str));
        }

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdLoaded() {
            e.b("AMFTAGBD", "onADReceive");
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) a.this.f4616t);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(a.this.f4911i, iA)) {
                a.this.a(iA, 0);
                return;
            }
            a.this.b(iA);
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(aVar.f4909g, iA, aVar.f4911i);
            a.this.u();
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdShow() {
            e.b("AMFTAGBD", "onAdShow");
            a.this.v();
            a.this.t();
            q.a(new RunnableC0136a(), 1L);
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdSkip(float f10) {
            e.b("AMFTAGBD", "onAdSkip playScale = " + f10);
            q.a(new c(), 1000L);
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onVideoDownloadFailed() {
            e.b("AMFTAGBD", "onVideoDownloadFailed");
            a.this.b(new j(-1000, "视频素材缓存失败"));
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onVideoDownloadSuccess() {
            e.b("AMFTAGBD", "onVideoDownloadSuccess");
            a.this.w();
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void playCompletion() {
            e.b("AMFTAGBD", "playCompletion");
            q.a(new b(), 1000L);
            a.this.x();
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4617u = new AtomicBoolean();
        this.f4618v = new C0135a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        if (this.f4480q && this.f4616t != null && this.f4617u.compareAndSet(false, true)) {
            e.b("AMFTAGBD", "show #1 ");
            this.f4616t.show();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        e.c("win " + i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4616t, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        if (this.f4616t != null) {
            this.f4616t = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a().a(this.f4616t);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        if (m()) {
            return;
        }
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        String strA = this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, "");
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA, strA);
        FullScreenVideoAd fullScreenVideoAd = new FullScreenVideoAd(contextA.getApplicationContext(), this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0), this.f4618v);
        this.f4616t = fullScreenVideoAd;
        fullScreenVideoAd.setAppSid(strA);
        this.f4480q = false;
        a(this.f4910h, this.f4911i).a(0).b();
        try {
            RequestParameters.Builder builder = new RequestParameters.Builder();
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4616t, builder.build());
        } catch (Exception unused) {
        }
        this.f4616t.load();
        e.b("AMFTAGBD", "load enter");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
        this.f4912j = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4616t, "203");
    }
}
