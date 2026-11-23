package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.join.mgps.Util.h1;
import com.join.mgps.pref.PrefDef_;
import com.windmill.sdk.utils.UIUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class l extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TTAdNative f58400o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TTRewardVideoAd f58401p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdSlot f58402q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f58403r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f58404s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TTRewardVideoAd.RewardAdInteractionListener f58405t;

    class a implements TTRewardVideoAd.RewardAdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            d.h(l.this.f58359a, 3);
            l.this.onWfADClose();
            l lVar = l.this;
            lVar.onWfADClose(lVar.f58364f);
            l lVar2 = l.this;
            lVar2.onWfADClose(lVar2.f58364f, lVar2.f58365g, lVar2.f58366h);
            l lVar3 = l.this;
            lVar3.onWfADClose(lVar3.f58364f, lVar3.f58365g, lVar3.f58366h, lVar3.f58370l);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            l.this.f58403r = false;
            d.h(l.this.f58359a, 1);
            l.this.onWfADShow();
            l.this.e();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            d.h(l.this.f58359a, 2);
            h1.c(l.this.f58362d, "rewardVideoAd bar click");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean b10, int i10, Bundle bundle) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean b10, int i10, String s10, int i11, String s11) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
            l.this.f();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            d.h(l.this.f58359a, 4);
            l.this.onWfVideoComplete();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
        }
    }

    public l(Context ctx, String appId, String posId) {
        super("GroMore", ctx, appId, posId);
        this.f58403r = false;
    }

    private void w(boolean b10) {
        this.f58402q = new AdSlot.Builder().setCodeId(this.f58361c).setAdCount(1).setImageAcceptedSize(UIUtils.getScreenWidthInPx(this.f58359a), UIUtils.getScreenHeightInPx(this.f58359a)).setAdLoadType(b10 ? TTAdLoadType.LOAD : TTAdLoadType.PRELOAD).setUserID("user123").setMediaExtra("media_extra").build();
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        if (this.f58404s == null) {
            this.f58404s = new b();
        }
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        com.join.mgps.ad.adapter.f.d(this.f58359a, this.f58360b, new e6.a() { // from class: com.join.mgps.ad.k
            @Override // e6.a
            public final void a() {
                this.f58399a.onWfInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RewardVideoAd:");
            sb2.append(this.f58401p != null);
            sb2.append("hasLoaded:");
            sb2.append(this.f58403r);
        }
        return this.f58401p != null && this.f58403r;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        try {
            if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
                return;
            }
            this.f58403r = false;
            if (d.f58357m) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("load:");
                sb2.append(showAd);
            }
            x();
            w(showAd);
            if (this.f58404s == null) {
                this.f58404s = new b();
            }
            this.f58404s.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            if (this.f58400o == null && TTAdSdk.getAdManager() != null) {
                this.f58400o = TTAdSdk.getAdManager().createAdNative(this.f58359a);
            }
            TTAdNative tTAdNative = this.f58400o;
            if (tTAdNative != null) {
                tTAdNative.loadRewardVideoAd(this.f58402q, this.f58404s);
                return;
            }
            Map<String, Object> map = this.f58370l;
            if (map != null) {
                d.i(this.f58359a, 5, map);
            } else {
                d.h(this.f58359a, 5);
            }
            onWfError(-1, "广告加载错误");
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f58369k = false;
            Map<String, Object> map2 = this.f58370l;
            if (map2 != null) {
                d.i(this.f58359a, 5, map2);
            } else {
                d.h(this.f58359a, 5);
            }
            onWfError(-1, "广告加载错误");
        }
    }

    @Override // com.join.mgps.ad.d
    protected void t(Activity activity) {
        super.t(activity);
        if (this.f58405t == null) {
            this.f58405t = new a();
        }
        this.f58401p.setRewardAdInteractionListener(this.f58405t);
        this.f58401p.showRewardVideoAd(this.f58363e);
        this.f58401p = null;
    }

    public void x() {
    }

    class b implements TTAdNative.RewardVideoAdListener, TTAdSdk.InitCallback {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f58407g = false;

        b() {
        }

        public void a(boolean showAd) {
            this.f58407g = showAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int code, String msg) {
            l lVar = l.this;
            Map<String, Object> map = lVar.f58370l;
            if (map != null) {
                d.i(lVar.f58359a, 5, map);
            } else {
                d.h(lVar.f58359a, 5);
            }
            l.this.onWfError(code, msg);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int code, String message) {
            l.this.f58403r = false;
            l lVar = l.this;
            lVar.f58369k = false;
            Map<String, Object> map = lVar.f58370l;
            if (map != null) {
                d.i(lVar.f58359a, 5, map);
            } else {
                d.h(lVar.f58359a, 5);
            }
            l.this.onWfError(code, message);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd ttRewardVideoAd) {
            h1.c(l.this.f58362d, "rewardVideoAd loaded");
            l.this.f58403r = true;
            l lVar = l.this;
            lVar.f58369k = false;
            lVar.f58401p = ttRewardVideoAd;
            l.this.onWfADLoad(this.f58407g);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            h1.c(l.this.f58362d, "rewardVideoAd video cached");
            l.this.f58403r = true;
            l lVar = l.this;
            lVar.f58369k = false;
            lVar.onWfVideoCached();
            l.this.onWfADLoad(this.f58407g);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            l.this.onWfInitSuccess();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd ttRewardVideoAd) {
            l.this.f58403r = true;
            l lVar = l.this;
            lVar.f58369k = false;
            lVar.f58401p = ttRewardVideoAd;
            l.this.onWfVideoCached();
        }
    }
}
