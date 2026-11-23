package com.aggmoread.sdk.z.c.a.a.d.a.d.r.h;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.a.d.j;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends j implements RewardVideoAd.RewardVideoAdListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RewardVideoAd f4631v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AtomicBoolean f4632w;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.h.a$a, reason: collision with other inner class name */
    class RunnableC0140a implements Runnable {
        RunnableC0140a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.a(((j) a.this).f4520s, 2);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.a(((j) a.this).f4520s, 2);
        }
    }

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.f4632w = new AtomicBoolean();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
        this.f4912j = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4631v, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.c("win " + i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4631v, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a().a(this.f4631v);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "handle");
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        String strA = this.f4911i.f5003c.a(f.c.f5023e0, "");
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA, strA);
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "mute = " + (bVar != null ? bVar.d() : true));
        Context applicationContext = contextA.getApplicationContext();
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5015a0;
        RewardVideoAd rewardVideoAd = new RewardVideoAd(applicationContext, fVar.a(obj, ""), this);
        this.f4631v = rewardVideoAd;
        rewardVideoAd.setAppSid(strA);
        this.f4521t = false;
        if (this.f4910h.f4960p != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "set ssv");
            String strE = this.f4910h.f4960p.e();
            String strA2 = this.f4910h.f4960p.a();
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "u = " + strE + ", cd = " + strA2);
            String strA3 = p.a(strA2, this.f4911i.f5003c.c(obj));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" _extrasInfo = ");
            sb2.append(strA3);
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", sb2.toString());
            this.f4631v.setUserId(strE);
            this.f4631v.setExtraInfo(strA3);
        }
        a(this.f4910h, this.f4911i).a(0).b();
        try {
            RequestParameters.Builder builder = new RequestParameters.Builder();
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4631v, builder.build());
        } catch (Exception unused) {
        }
        this.f4631v.load();
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onAdClick() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onADClick");
        q();
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onAdClose(float f10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onADClose " + f10);
        r();
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onAdFailed(String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onAdFailed " + str);
        b(new com.aggmoread.sdk.z.c.a.a.d.b.j(-1000, str));
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onAdLoaded() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onADLoad");
        int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) this.f4631v);
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4911i, iA)) {
            a(iA, 0);
            return;
        }
        b(iA);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(this.f4909g, iA, this.f4911i);
        d(1);
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onAdShow() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onADShow");
        e eVar = this.f4910h;
        n.a(eVar.f4946b, this.f4520s, eVar.f4949e, Integer.valueOf(this.f4911i.f()));
        n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
        if (this.f4910h.f() != null) {
            e eVar2 = this.f4910h;
            n.a(eVar2.f4946b, eVar2.f());
        }
        byte[] bArrB = this.f4910h.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4910h.f4946b, bArrB);
        }
        n.a((Object) this.f4520s, true, true);
        n.a(this.f4520s, this.f4911i);
        t();
        s();
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onAdSkip(float f10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onAdSkip " + f10);
        q.a(new b(), 1000L);
    }

    public void onRewardVerify(boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "reward onReward " + z10);
        n.a(this.f4520s, 1);
        b(this.f4519r);
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onVideoDownloadFailed() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onVideoDownloadFailed");
        b(new com.aggmoread.sdk.z.c.a.a.d.b.j(-1000, "视频素材缓存失败"));
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void onVideoDownloadSuccess() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "onVideoDownloadSuccess");
        u();
    }

    @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
    public void playCompletion() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "playCompletion");
        q.a(new RunnableC0140a(), 1000L);
        a((Map<String, Object>) null);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void v() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGBD", "showInner " + this.f4521t);
        if (this.f4521t && this.f4631v != null && this.f4632w.compareAndSet(false, true)) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4631v, k());
            this.f4631v.show();
        }
    }
}
