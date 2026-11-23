package com.aggmoread.sdk.z.c.a.a.d.a.d.w.h;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.c.g;
import com.aggmoread.sdk.z.c.a.a.c.m;
import com.aggmoread.sdk.z.c.a.a.d.a.d.h;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsInterstitialAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends h {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private KsInterstitialAd f4883t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4884u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private KsVideoPlayConfig f4885v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f4886w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final com.aggmoread.sdk.z.c.a.a.c.u.b f4887x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private KsLoadManager.InterstitialAdListener f4888y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private KsInterstitialAd.AdInteractionListener f4889z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.h.a$a, reason: collision with other inner class name */
    class C0178a implements KsLoadManager.InterstitialAdListener {
        C0178a() {
        }

        @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
        public void onError(int i10, String str) {
            e.b("AMITAGKS", "onError i " + i10 + ",s  = " + str);
            a.this.b(new j(i10, str));
        }

        @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
        public void onInterstitialAdLoad(@Nullable List<KsInterstitialAd> list) {
            e.b("AMITAGKS", "onInterstitialAdLoad");
            if (list != null && list.size() > 0) {
                a.this.f4883t = list.get(0);
                a.this.f4883t.setAdInteractionListener(a.this.f4889z);
            }
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) a.this.f4883t);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(a.this.f4911i, iA)) {
                a.this.a(iA, 0);
                return;
            }
            a.this.b(iA);
            a aVar = a.this;
            aVar.f4886w = iA;
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(aVar.f4909g, iA, aVar.f4911i);
            a.this.u();
        }

        @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
        public void onRequestResult(int i10) {
            e.b("AMITAGKS", "onRequestResult " + i10);
        }
    }

    class b implements KsInterstitialAd.AdInteractionListener {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.h.a$b$a, reason: collision with other inner class name */
        class RunnableC0179a implements Runnable {
            RunnableC0179a() {
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
                n.a(((h) a.this).f4499r, 2);
            }
        }

        b() {
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onAdClicked() {
            e.b("AMITAGKS", "onADClicked");
            a.this.r();
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onAdClosed() {
            e.b("AMITAGKS", "onADClosed");
            a.this.s();
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onAdShow() {
            e.b("AMITAGKS", "onADExposure");
            a.this.v();
            a.this.t();
            q.a(new RunnableC0179a(), 1L);
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onPageDismiss() {
            e.b("AMITAGKS", "onADLeftApplication");
            a.this.q();
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onSkippedAd() {
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onVideoPlayEnd() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoComplete();
            }
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onVideoPlayError(int i10, int i11) {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                gVar.a(new j(i10, i11 + ""));
            }
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onVideoPlayStart() {
            g gVar = a.this.f4910h.f4952h;
            if (gVar instanceof m) {
                ((m) gVar).onVideoStart();
            }
        }
    }

    class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            a.this.y();
            return false;
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f4894b;

        d(Activity activity) {
            this.f4894b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f4883t.showInterstitialAd(this.f4894b, a.this.f4885v);
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4884u = new AtomicBoolean();
        this.f4887x = new com.aggmoread.sdk.z.c.a.a.c.u.b.C0120b().b(1).a(1).a(true).a();
        this.f4888y = new C0178a();
        this.f4889z = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        try {
            String strC = this.f4911i.f5003c.c(f.c.f5015a0);
            String strTrim = strC.replace("L", "").trim();
            long j10 = Long.parseLong(strTrim);
            e.b("AMITAGKS", "handle #3");
            e.b("AMITAGKS", "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
            KsScene ksSceneBuild = new KsScene.Builder(j10).build();
            com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
            if (bVar == null) {
                bVar = this.f4887x;
            }
            this.f4885v = null;
            if (bVar != null) {
                KsVideoPlayConfig.Builder builder = new KsVideoPlayConfig.Builder();
                builder.videoSoundEnable(!bVar.d());
                this.f4885v = builder.build();
            }
            this.f4498q = false;
            a(this.f4910h, this.f4911i).a(0).b();
            e.b("AMITAGKS", "load ad");
            KsAdSDK.getLoadManager().loadInterstitialAd(ksSceneBuild, this.f4888y);
        } catch (Exception unused) {
            b(new j(1001002008, "广告ID配置错误，广告加载失败！"));
            e.b("AMITAGKS", "returen #2");
        }
    }

    private void z() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            a((Activity) context);
        } else {
            super.b();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        super.c(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4883t, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        if (this.f4883t != null) {
            this.f4883t = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a().a(this.f4883t);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        e.b("AMITAGKS", "handle enter");
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(f.c.f5023e0, ""))) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, this.f4914l, new c());
        } else {
            b(new j(1001002008, "广告加载失败！"));
            e.b("AMITAGKS", "returen #1");
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4883t, i11);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        if (this.f4498q && this.f4883t != null && this.f4884u.compareAndSet(false, true)) {
            if (activity == null) {
                super.b();
                return;
            }
            z();
            try {
                activity.getWindow().getDecorView().post(new d(activity));
            } catch (Exception e10) {
                e.b("AMITAGKS", "show #3 " + e10.getMessage());
                this.f4883t.showInterstitialAd(activity, this.f4885v);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }
}
