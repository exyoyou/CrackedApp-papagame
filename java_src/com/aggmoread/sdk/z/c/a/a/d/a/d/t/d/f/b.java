package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.f;

import android.app.Activity;
import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.d.h;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends h implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TTFullScreenVideoAd f4736t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4737u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AtomicBoolean f4738v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f4739w;

    class a implements TTAdNative.FullScreenVideoAdListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onError(int i10, String str) {
            b.this.a(i10, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
            b.this.f4736t = tTFullScreenVideoAd;
            b.this.B();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
            b.this.C();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.f.b$b, reason: collision with other inner class name */
    class RunnableC0154b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f4741b;

        RunnableC0154b(Activity activity) {
            this.f4741b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.b(this.f4741b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            Object obj = bVar.f4910h.f4946b;
            Object[] objArr = ((h) bVar).f4499r;
            b bVar2 = b.this;
            n.a(obj, objArr, bVar2.f4910h.f4949e, Integer.valueOf(bVar2.f4911i.f()));
            b bVar3 = b.this;
            n.b(bVar3.f4910h.f4946b, bVar3.f4911i.e(), b.this.f4911i.b());
            byte[] bArrB = b.this.f4910h.f4962r.b();
            if (bArrB != null) {
                n.a(b.this.f4910h.f4946b, bArrB);
            }
            n.a((Object) ((h) b.this).f4499r, true, true);
            n.a(((h) b.this).f4499r, b.this.f4911i);
            n.a(((h) b.this).f4499r, 3);
        }
    }

    public b(e eVar, f fVar) {
        super(eVar, fVar);
        this.f4737u = new AtomicBoolean();
        this.f4738v = new AtomicBoolean();
        this.f4739w = "msdk-user";
    }

    private void A() {
        if (this.f4738v.compareAndSet(false, true)) {
            n.a(this.f4499r, 2);
            x();
        }
    }

    private void D() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.a(this.f4909g, this.f4736t);
    }

    private int y() {
        return this.f4910h.f4948d.getResources().getConfiguration().orientation == 2 ? 2 : 1;
    }

    private void z() {
        Activity activityA = com.aggmoread.sdk.z.c.a.a.d.a.d.n.a(this.f4910h.f4948d);
        if (activityA == null) {
            a(1001003005, "当前传入Activity为空");
            return;
        }
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        boolean zD = bVar != null ? bVar.d() : true;
        TTAdNative tTAdNativeCreateAdNative = TTAdSdk.getAdManager().createAdNative(activityA);
        HashMap map = new HashMap();
        String strA = this.f4910h.f4960p.a();
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5015a0;
        String strA2 = p.a(strA, fVar.c(obj));
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "uid = " + this.f4910h.f4960p.e() + ", extra = " + map);
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(this.f4911i.f5003c.c(obj)).setUserID(this.f4739w).setUserData(strA2).setOrientation(y()).setMediationAdSlot(new MediationAdSlot.Builder().setMuted(zD).setBidNotify(true).setRewardName(this.f4910h.f4960p.d()).setRewardAmount(this.f4910h.f4960p.b()).setExtraObject("gromoreExtra", strA2).build()).build();
        a(this.f4910h, this.f4911i).a(0).b();
        tTAdNativeCreateAdNative.loadFullScreenVideoAd(adSlotBuild, new a());
    }

    public void B() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onFullVideoAdLoad ");
        D();
        u();
    }

    public void C() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onFullVideoCached");
        w();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.h, com.aggmoread.sdk.z.c.a.a.c.r.b
    public void b() {
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            b((Activity) context);
        } else {
            super.b();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void destroy() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f4736t;
        if (tTFullScreenVideoAd == null || tTFullScreenVideoAd.getMediationManager() == null) {
            return;
        }
        this.f4736t.getMediationManager().destroy();
        this.f4736t = null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.c().d();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.c.a.a.c.s.c cVar = this.f4910h.f4960p;
        if (cVar != null) {
            this.f4739w = cVar.e();
        }
        boolean zC = com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), this.f4911i.f5003c.c(f.c.f5021d0));
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "isInit " + zC);
        if (zC) {
            z();
        } else {
            b(new j(1001003005, "csj: MSDK未初始化，请稍后重试!"));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public void onAdClose() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onAdClose");
        s();
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public void onAdShow() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onAdShow");
        q.a(new c(), 500L);
        if (this.f4736t != null) {
            D();
        }
        v();
        t();
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public void onAdVideoBarClick() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onAdVideoBarClick");
        r();
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public void onSkippedVideo() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onSkippedVideo");
        A();
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public void onVideoComplete() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "onVideoComplete");
        A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "showAd activity = " + activity);
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f4736t;
        if (tTFullScreenVideoAd != null) {
            boolean z10 = tTFullScreenVideoAd.getMediationManager() != null && this.f4736t.getMediationManager().isReady();
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "showAd isReady = " + z10);
            if (z10 && this.f4737u.compareAndSet(false, true)) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "show");
                if (activity == null) {
                    super.b();
                } else {
                    this.f4736t.setFullScreenVideoAdInteractionListener(this);
                    this.f4736t.showFullScreenVideoAd(activity);
                }
            }
        }
    }

    public void a(int i10, String str) {
        b(new j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.r.b
    public void a(Activity activity) {
        try {
            activity.getWindow().getDecorView().post(new RunnableC0154b(activity));
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMITAGCSJ", "show #3 " + e10.getMessage());
            b(activity);
        }
    }
}
