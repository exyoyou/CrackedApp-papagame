package com.aggmoread.sdk.z.c.a.a.d.a.d.w.g;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.c.g;
import com.aggmoread.sdk.z.c.a.a.c.m;
import com.aggmoread.sdk.z.c.a.a.d.a.d.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsFullScreenVideoAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends f {
    private KsFullScreenVideoAd.FullScreenVideoAdInteractionListener A;
    int B;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private KsFullScreenVideoAd f4872t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4873u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private KsVideoPlayConfig f4874v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f4875w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f4876x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final com.aggmoread.sdk.z.c.a.a.c.u.b f4877y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b.a f4878z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.a$a, reason: collision with other inner class name */
    class C0177a implements com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b.a {
        C0177a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b.a
        public void a(@Nullable List<KsFullScreenVideoAd> list) {
            e.b("AMFTAGKS", "onInterstitialAdLoad");
            if (list != null && list.size() > 0) {
                a.this.f4872t = list.get(0);
                a.this.f4872t.setFullScreenVideoAdInteractionListener(a.this.A);
            }
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) a.this.f4872t);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(a.this.f4911i, iA)) {
                a.this.a(iA, 0);
                return;
            }
            a.this.b(iA);
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(aVar.f4909g, iA, aVar.f4911i);
            a aVar2 = a.this;
            aVar2.f4876x = iA;
            aVar2.u();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b.a
        public void b(@Nullable List<KsFullScreenVideoAd> list) {
            e.b("AMFTAGKS", "onFullScreenVideoResult " + list);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b.a
        public void onError(int i10, String str) {
            e.b("AMFTAGKS", "onError i " + i10 + ",s  = " + str);
            a.this.b(new j(i10, str));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b.a
        public void onRequestResult(int i10) {
            e.b("AMFTAGKS", "onRequestResult " + i10);
        }
    }

    class b implements KsFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        b() {
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClicked() {
            e.b("AMFTAGKS", "onADClicked");
            a.this.f4875w = true;
            a.this.r();
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onPageDismiss() {
            e.b("AMFTAGKS", "onPageDismiss");
            a.this.s();
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
            e.b("AMFTAGKS", "onSkippedVideo");
            a.this.z();
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoPlayEnd() {
            e.b("AMFTAGKS", "onVideoPlayEnd");
            a.this.A();
            a.this.z();
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoPlayError(int i10, int i11) {
            e.b("AMFTAGKS", "onVideoPlayError i " + i10 + ",s " + i11);
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                gVar.a(new j(i10, i11 + ""));
            }
            a.this.c(new j(i10, String.valueOf(i11)));
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoPlayStart() {
            e.b("AMFTAGKS", "onVideoPlayStart");
            a.this.v();
            a.this.t();
            a aVar = a.this;
            Object obj = aVar.f4910h.f4946b;
            Object[] objArr = ((f) aVar).f4481r;
            a aVar2 = a.this;
            n.a(obj, objArr, aVar2.f4910h.f4949e, Integer.valueOf(aVar2.f4911i.f()));
            a aVar3 = a.this;
            n.b(aVar3.f4910h.f4946b, aVar3.f4911i.e(), a.this.f4911i.b());
            if (a.this.f4910h.f() != null) {
                com.aggmoread.sdk.z.c.a.a.d.b.e eVar = a.this.f4910h;
                n.a(eVar.f4946b, eVar.f());
            }
            byte[] bArrB = a.this.f4910h.f4962r.b();
            if (bArrB != null) {
                n.a(a.this.f4910h.f4946b, bArrB);
            }
            n.a((Object) ((f) a.this).f4481r, true, true);
            n.a(((f) a.this).f4481r, a.this.f4911i);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.a(((f) a.this).f4481r, 2);
            a.this.A();
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4873u = new AtomicBoolean();
        this.f4875w = false;
        this.f4877y = new com.aggmoread.sdk.z.c.a.a.c.u.b.C0120b().b(1).a(1).a(true).a();
        this.f4878z = new C0177a();
        this.A = new b();
        this.B = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        if (this.f4875w || this.B > 5) {
            return;
        }
        e.b("AMFTAGKS", "find cc ");
        this.B++;
        q.a(new c(), 500L);
    }

    private void y() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        g gVar = this.f4910h.f4952h;
        if (gVar instanceof m) {
            ((m) gVar).onVideoComplete();
        }
        x();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            b((Activity) context);
        } else {
            super.b();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        super.c(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4872t, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        if (this.f4872t != null) {
            this.f4872t = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a().a(this.f4872t);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        if (!com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5023e0, ""))) {
            b(new j(1001002008, "广告加载失败！"));
            return;
        }
        try {
            String strC = this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0);
            String strTrim = strC.replace("L", "").trim();
            long j10 = Long.parseLong(strTrim);
            e.b("AMFTAGKS", "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
            KsScene ksSceneBuild = new KsScene.Builder(j10).build();
            com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
            if (bVar == null) {
                bVar = this.f4877y;
            }
            this.f4874v = null;
            if (bVar != null) {
                KsVideoPlayConfig.Builder builder = new KsVideoPlayConfig.Builder();
                builder.videoSoundEnable(!bVar.d());
                this.f4874v = builder.build();
            }
            this.f4480q = false;
            a(this.f4910h, this.f4911i).a(0).b();
            e.b("AMFTAGKS", "load ad");
            KsAdSDK.getLoadManager().loadFullScreenVideoAd(ksSceneBuild, new com.aggmoread.sdk.z.c.a.a.d.a.d.w.g.b(this.f4878z).a());
        } catch (Exception unused) {
            b(new j(1001002008, "广告ID配置错误，广告加载失败！"));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4872t, i11);
    }

    private void b(Activity activity) {
        if (this.f4480q && this.f4872t != null && this.f4873u.compareAndSet(false, true)) {
            if (activity == null) {
                super.b();
            } else {
                y();
                this.f4872t.showFullScreenVideoAd(activity, this.f4874v);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.q.b, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        b(activity);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.f, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }
}
