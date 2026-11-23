package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.g;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.d.a.d.j;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.h;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends j implements TTRewardVideoAd.RewardAdInteractionListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TTRewardVideoAd f4744v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AtomicBoolean f4745w;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.g.a$a, reason: collision with other inner class name */
    class C0155a implements TTAdNative.RewardVideoAdListener {
        C0155a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int i10, String str) {
            a.this.a(i10, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            a.this.f4744v = tTRewardVideoAd;
            a.this.z();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            e.b("AMRTAGCSJ", "onRewardVideoCached #1");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
            e.b("AMRTAGCSJ", "onRewardVideoCached #2");
            a.this.A();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            Object obj = aVar.f4910h.f4946b;
            Object[] objArr = ((j) aVar).f4520s;
            a aVar2 = a.this;
            n.a(obj, objArr, aVar2.f4910h.f4949e, Integer.valueOf(aVar2.f4911i.f()));
            a aVar3 = a.this;
            n.b(aVar3.f4910h.f4946b, aVar3.f4911i.e(), a.this.f4911i.b());
            byte[] bArrB = a.this.f4910h.f4962r.b();
            if (bArrB != null) {
                n.a(a.this.f4910h.f4946b, bArrB);
            }
            n.a((Object) ((j) a.this).f4520s, true, true);
            n.a(((j) a.this).f4520s, a.this.f4911i);
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4745w = new AtomicBoolean();
    }

    private void B() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.a(this.f4909g, this.f4744v);
    }

    private void c(Activity activity) {
        e.b("AMRTAGCSJ", "showAd activity = " + activity);
        if (this.f4744v == null || !this.f4745w.compareAndSet(false, true)) {
            return;
        }
        e.b("AMRTAGCSJ", "show");
        this.f4744v.setRewardAdInteractionListener(this);
        this.f4744v.showRewardVideoAd(activity);
    }

    private Activity w() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.n.a(this.f4910h.f4948d);
    }

    private int x() {
        return this.f4910h.f4948d.getResources().getConfiguration().orientation == 2 ? 2 : 1;
    }

    private void y() {
        com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4910h.f4963s;
        boolean zD = bVar != null ? bVar.d() : true;
        Activity activityW = w();
        if (activityW == null) {
            a(1001003005, "当前传入Activity为空");
            return;
        }
        TTAdNative tTAdNativeCreateAdNative = TTAdSdk.getAdManager().createAdNative(activityW);
        HashMap map = new HashMap();
        String strA = this.f4910h.f4960p.a();
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5015a0;
        String strA2 = p.a(strA, fVar.c(obj));
        e.b("AMRTAGCSJ", "use cjs verify = false");
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(this.f4911i.f5003c.c(obj)).setUserID(this.f4910h.f4960p.e()).setOrientation(x()).setUserData(strA2).setMediationAdSlot(new MediationAdSlot.Builder().setMuted(zD).setUseSurfaceView(h.b().d()).setRewardAmount(this.f4910h.f4960p.b()).setRewardName(this.f4910h.f4960p.d()).setExtraObject("gromoreExtra", strA2).build()).build();
        e.b("AMRTAGCSJ", "uid = " + this.f4910h.f4960p.e() + ", extra = " + map.toString());
        a(this.f4910h, this.f4911i).a(0).b();
        tTAdNativeCreateAdNative.loadRewardVideoAd(adSlotBuild, new C0155a());
    }

    public void A() {
        e.b("AMRTAGCSJ", "onRewardVideoCached");
        u();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    protected void b(Activity activity) {
        c(activity);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j, com.aggmoread.sdk.z.c.a.a.c.s.a
    public void destroy() {
        TTRewardVideoAd tTRewardVideoAd = this.f4744v;
        if (tTRewardVideoAd == null || tTRewardVideoAd.getMediationManager() == null) {
            return;
        }
        this.f4744v.getMediationManager().destroy();
        this.f4744v = null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.c().e();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        int i10;
        String str;
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar = this.f4910h;
        if (eVar.f4960p == null) {
            i10 = 1001001000;
            str = "缺少必要的激励视频配置参数!";
        } else {
            boolean zC = com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(eVar.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), this.f4911i.f5003c.c(f.c.f5021d0));
            e.b("AMRTAGCSJ", "isInit " + zC);
            if (zC) {
                y();
                return;
            } else {
                i10 = 1001003005;
                str = "csj: MSDK未初始化，请稍后重试!";
            }
        }
        a(i10, str);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onAdClose() {
        e.b("AMRTAGCSJ", "onAdClose");
        r();
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onAdShow() {
        e.b("AMRTAGCSJ", "onAdShow");
        q.a(new b(), 500L);
        B();
        t();
        s();
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onAdVideoBarClick() {
        e.b("AMRTAGCSJ", "onAdVideoBarClick");
        q();
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onRewardArrived(boolean z10, int i10, Bundle bundle) {
        e.b("AMRTAGCSJ", "onRewardVerify");
        if (bundle != null) {
            int i11 = bundle.getInt("reward_extra_key_error_code");
            e.b("AMRTAGCSJ", "code = " + i11 + ", msg " + bundle.getString("reward_extra_key_error_msg"));
            if (i11 == 10111) {
                e.b("AMRTAGCSJ", "当前CSJ判定为异常用户");
                this.f4519r.put(AMConst.REWARD_ERROR_CODE, 1001007000);
            }
        }
        n.a(this.f4520s, 1);
        b(this.f4519r);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onRewardVerify(boolean z10, int i10, String str, int i11, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onSkippedVideo() {
        e.b("AMRTAGCSJ", "onSkippedVideo");
        n.a(this.f4520s, 2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onVideoComplete() {
        e.b("AMRTAGCSJ", "onVideoComplete");
        n.a(this.f4520s, 2);
        a((Map<String, Object>) null);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
    public void onVideoError() {
        e.b("AMRTAGCSJ", "onVideoError");
        c(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001001000, "视频加载失败!"));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void v() {
        Context context = this.f4910h.f4948d;
        if (context instanceof Activity) {
            b((Activity) context);
            return;
        }
        e.b("AMRTAGCSJ", "act = null " + this.f4521t);
        if (this.f4521t) {
            c(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002009, "当前传入Activity为空"));
        }
    }

    public void z() {
        e.b("AMRTAGCSJ", "ad loaded");
        B();
        d(1);
    }

    public void a(int i10, String str) {
        b(new com.aggmoread.sdk.z.c.a.a.d.b.j(i10, str));
    }
}
