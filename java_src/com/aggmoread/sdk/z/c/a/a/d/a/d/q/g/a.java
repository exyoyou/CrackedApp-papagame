package com.aggmoread.sdk.z.c.a.a.d.a.d.q.g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.aggmoread.sdk.z.a.g.f;
import com.aggmoread.sdk.z.a.h.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.h;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends h {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private c f4560t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.a f4561u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AtomicBoolean f4562v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.c f4563w;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.q.g.a$a, reason: collision with other inner class name */
    class C0125a implements com.aggmoread.sdk.z.a.s.c {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.q.g.a$a$a, reason: collision with other inner class name */
        class RunnableC0126a implements Runnable {

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.q.g.a$a$a$a, reason: collision with other inner class name */
            class RunnableC0127a implements Runnable {
                RunnableC0127a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    n.a(((h) a.this).f4499r, 2);
                }
            }

            RunnableC0126a() {
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
                q.a(new RunnableC0127a(), 500L);
            }
        }

        C0125a() {
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void a() {
            e.b("AMITAGBD", "onADClosed");
            a.this.s();
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void d() {
            e.b("AMITAGBD", "onADExposure");
            a.this.t();
            q.a(new RunnableC0126a(), 1L);
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onAdClicked() {
            e.b("AMITAGBD", "onADClicked");
            a.this.r();
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onAdShow() {
            e.b("AMITAGBD", "onADOpened");
            a.this.v();
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onVideoCached() {
            e.b("AMITAGBD", "onVideoCached");
            a.this.w();
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onVideoCompleted() {
            a.this.x();
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void a(com.aggmoread.sdk.z.a.a aVar) {
            e.b("AMITAGBD", "onAdLoaded");
            a.this.f4561u = aVar;
            int iD = a.this.f4561u.d();
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.a(a.this.f4911i, iD)) {
                a.this.a(iD, 0);
                return;
            }
            a.this.b(iD);
            a aVar2 = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.b(aVar2.f4909g, iD, aVar2.f4911i);
            a.this.u();
        }

        @Override // com.aggmoread.sdk.z.a.i.h
        public void a(f fVar) {
            e.b("AMITAGBD", "onAdError");
            a.this.b(new j(fVar.a(), fVar.b()));
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f4567b;

        b(Activity activity) {
            this.f4567b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f4561u != null) {
                a.this.f4561u.a(this.f4567b, null);
            }
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4562v = new AtomicBoolean();
        this.f4563w = new C0125a();
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

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        com.aggmoread.sdk.z.a.a aVar = this.f4561u;
        return aVar == null ? "" : aVar.c();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        e.b("AMITAGBD", "handle");
        com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h.f4948d);
        this.f4498q = false;
        try {
            String strC = this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0);
            if (!TextUtils.isEmpty(strC) && strC.contains("inter_")) {
                strC = strC.replace("inter_", "").trim();
            }
            this.f4560t = com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h, this.f4911i).a(true).a(strC).e();
            a(this.f4910h, this.f4911i).a(0).b();
            this.f4560t.a(this.f4563w);
        } catch (Exception e10) {
            e10.printStackTrace();
            b(new j(1001002008, "广告请求失败!"));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        e.b("AMITAGBD", "show #2 activity = " + activity);
        if (this.f4498q && this.f4561u != null && this.f4562v.compareAndSet(false, true)) {
            e.b("AMITAGBD", "show #2 ");
            if (activity == null) {
                super.b();
                return;
            }
            try {
                activity.getWindow().getDecorView().post(new b(activity));
            } catch (Exception e10) {
                e.b("AMITAGBD", "show #3 " + e10.getMessage());
                com.aggmoread.sdk.z.a.a aVar = this.f4561u;
                if (aVar != null) {
                    aVar.a(activity, null);
                }
            }
        }
    }
}
