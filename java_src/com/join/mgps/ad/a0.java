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
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.windmill.sdk.utils.UIUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a0 extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TTAdNative f58333o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TTRewardVideoAd f58334p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdSlot f58335q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f58336r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f58337s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TTRewardVideoAd.RewardAdInteractionListener f58338t;

    class a implements TTRewardVideoAd.RewardAdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            d.h(a0.this.f58359a, 3);
            a0.this.onWfADClose();
            a0 a0Var = a0.this;
            a0Var.onWfADClose(a0Var.f58364f);
            a0 a0Var2 = a0.this;
            a0Var2.onWfADClose(a0Var2.f58364f, a0Var2.f58365g, a0Var2.f58366h);
            a0 a0Var3 = a0.this;
            a0Var3.onWfADClose(a0Var3.f58364f, a0Var3.f58365g, a0Var3.f58366h, a0Var3.f58370l);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            a0.this.f58336r = false;
            d.h(a0.this.f58359a, 1);
            a0.this.onWfADShow();
            a0.this.e();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            d.h(a0.this.f58359a, 2);
            h1.c(a0.this.f58362d, "rewardVideoAd bar click");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean b10, int i10, Bundle bundle) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean b10, int i10, String s10, int i11, String s11) {
            h1.c(a0.this.f58362d, "verify:" + b10 + " amount:" + i10 + " name:" + s10);
            d.h(a0.this.f58359a, 6);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
            a0.this.f();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            d.h(a0.this.f58359a, 4);
            a0.this.onWfVideoComplete();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
            a0 a0Var = a0.this;
            Map<String, Object> map = a0Var.f58370l;
            if (map != null) {
                d.i(a0Var.f58359a, 5, map);
            } else {
                d.h(a0Var.f58359a, 5);
            }
        }
    }

    public a0(Context ctx, String appId, String posId) {
        super(GlobalSetting.TT_SDK_WRAPPER, ctx, appId, posId);
        this.f58336r = false;
    }

    private void w(boolean b10) {
        this.f58335q = new AdSlot.Builder().setCodeId(this.f58361c).setAdCount(1).setImageAcceptedSize(UIUtils.getScreenWidthInPx(this.f58359a), UIUtils.getScreenHeightInPx(this.f58359a)).setAdLoadType(b10 ? TTAdLoadType.LOAD : TTAdLoadType.PRELOAD).setUserID("user123").setMediaExtra("media_extra").build();
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        if (this.f58337s == null) {
            this.f58337s = new b();
        }
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        com.join.mgps.ad.adapter.f.d(this.f58359a, this.f58360b, new e6.a() { // from class: com.join.mgps.ad.z
            @Override // e6.a
            public final void a() {
                this.f58486a.onWfInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RewardVideoAd:");
            sb2.append(this.f58334p != null);
            sb2.append("hasLoaded:");
            sb2.append(this.f58336r);
        }
        return this.f58334p != null && this.f58336r;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        try {
            this.f58336r = false;
            if (d.f58357m) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("load:");
                sb2.append(showAd);
            }
            w(showAd);
            if (this.f58337s == null) {
                this.f58337s = new b();
            }
            this.f58337s.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            if (this.f58333o == null && TTAdSdk.getAdManager() != null) {
                this.f58333o = TTAdSdk.getAdManager().createAdNative(this.f58359a);
            }
            TTAdNative tTAdNative = this.f58333o;
            if (tTAdNative != null) {
                tTAdNative.loadRewardVideoAd(this.f58335q, this.f58337s);
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
        if (this.f58338t == null) {
            this.f58338t = new a();
        }
        this.f58334p.setRewardAdInteractionListener(this.f58338t);
        this.f58334p.showRewardVideoAd(activity);
    }

    class b implements TTAdNative.RewardVideoAdListener, TTAdSdk.InitCallback {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f58340g = false;

        b() {
        }

        public void a(boolean showAd) {
            this.f58340g = showAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int code, String msg) {
            a0 a0Var = a0.this;
            Map<String, Object> map = a0Var.f58370l;
            if (map != null) {
                d.i(a0Var.f58359a, 5, map);
            } else {
                d.h(a0Var.f58359a, 5);
            }
            a0.this.onWfError(code, msg);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int code, String message) {
            a0.this.f58336r = false;
            a0 a0Var = a0.this;
            a0Var.f58369k = false;
            Map<String, Object> map = a0Var.f58370l;
            if (map != null) {
                d.i(a0Var.f58359a, 5, map);
            } else {
                d.h(a0Var.f58359a, 5);
            }
            a0.this.onWfError(code, message);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd ad2) {
            h1.c(a0.this.f58362d, "rewardVideoAd loaded");
            a0.this.f58336r = true;
            a0 a0Var = a0.this;
            a0Var.f58369k = false;
            a0Var.f58334p = ad2;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            h1.c(a0.this.f58362d, "rewardVideoAd video cached");
            a0.this.f58336r = true;
            a0 a0Var = a0.this;
            a0Var.f58369k = false;
            a0Var.onWfVideoCached();
            a0.this.onWfADLoad(this.f58340g);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            a0.this.onWfInitSuccess();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd ttRewardVideoAd) {
            a0.this.f58336r = true;
            a0 a0Var = a0.this;
            a0Var.f58369k = false;
            a0Var.f58334p = ttRewardVideoAd;
            a0.this.onWfVideoCached();
        }
    }
}
