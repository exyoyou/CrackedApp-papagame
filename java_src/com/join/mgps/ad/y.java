package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.join.mgps.Util.h1;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes5.dex */
public class y extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TTAdNative f58477o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TTFullScreenVideoAd f58478p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdSlot f58479q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f58480r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f58481s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f58482t;

    class a implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClose() {
            d.h(y.this.f58359a, 1004);
            y.this.onWfADClose();
            y yVar = y.this;
            yVar.onWfADClose(yVar.f58364f);
            y yVar2 = y.this;
            yVar2.onWfADClose(yVar2.f58364f, yVar2.f58365g, yVar2.f58366h);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdShow() {
            y.this.f58480r = false;
            d.h(y.this.f58359a, 1003);
            y.this.onWfADShow();
            y.this.e();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdVideoBarClick() {
            h1.c(y.this.f58362d, "rewardVideoAd onAdClicked");
            y.this.onWfADClick();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
            y.this.f();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoComplete() {
            y.this.onWfVideoComplete();
        }
    }

    public y(Context ctx, String appId, String posId) {
        super(GlobalSetting.TT_SDK_WRAPPER, ctx, appId, posId);
        this.f58480r = false;
    }

    private void x(boolean b10) {
        int i10;
        int i11;
        if (com.join.mgps.ad.adapter.f.b() != null) {
            i10 = com.join.mgps.ad.adapter.f.b().x;
            i11 = com.join.mgps.ad.adapter.f.b().y;
        } else {
            i10 = LogType.UNEXP_ANR;
            i11 = 720;
        }
        this.f58479q = new AdSlot.Builder().setCodeId(this.f58361c).setAdCount(1).setImageAcceptedSize(i10, i11).setAdLoadType(b10 ? TTAdLoadType.LOAD : TTAdLoadType.PRELOAD).setExpressViewAcceptedSize(500.0f, 500.0f).build();
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        if (this.f58481s == null) {
            this.f58481s = new b();
        }
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        com.join.mgps.ad.adapter.f.d(this.f58359a, this.f58360b, new e6.a() { // from class: com.join.mgps.ad.x
            @Override // e6.a
            public final void a() {
                this.f58476a.onWfInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RewardVideoAd:");
            sb2.append(this.f58478p != null);
            sb2.append("hasLoaded:");
            sb2.append(this.f58480r);
        }
        return this.f58478p != null && this.f58480r;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        try {
            if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
                return;
            }
            this.f58480r = false;
            if (d.f58357m) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("load:");
                sb2.append(showAd);
            }
            x(showAd);
            if (this.f58481s == null) {
                this.f58481s = new b();
            }
            this.f58481s.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            if (this.f58477o == null && TTAdSdk.getAdManager() != null) {
                this.f58477o = TTAdSdk.getAdManager().createAdNative(this.f58359a);
            }
            TTAdNative tTAdNative = this.f58477o;
            if (tTAdNative != null) {
                tTAdNative.loadFullScreenVideoAd(this.f58479q, this.f58481s);
            } else {
                onWfError(-1, "广告加载错误");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f58369k = false;
            onWfError(-1, "广告加载错误");
        }
    }

    @Override // com.join.mgps.ad.d
    protected void t(Activity activity) {
        super.t(activity);
        this.f58480r = false;
        if (this.f58482t == null) {
            this.f58482t = new a();
        }
        this.f58478p.setFullScreenVideoAdInteractionListener(this.f58482t);
        this.f58478p.showFullScreenVideoAd(activity);
    }

    public void w() {
        if (this.f58478p != null) {
            this.f58478p = null;
        }
    }

    class b implements TTAdNative.FullScreenVideoAdListener, TTAdSdk.InitCallback {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f58484g = false;

        b() {
        }

        public void a(boolean showAd) {
            this.f58484g = showAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int code, String msg) {
            y.this.onWfError(code, msg);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onError(int code, String message) {
            y.this.f58480r = false;
            y yVar = y.this;
            yVar.f58369k = false;
            yVar.onWfError(code, message);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoAdLoad(TTFullScreenVideoAd ttFullScreenVideoAd) {
            h1.c(y.this.f58362d, "rewardVideoAd loaded");
            y.this.f58480r = true;
            y yVar = y.this;
            yVar.f58369k = false;
            yVar.f58478p = ttFullScreenVideoAd;
            y.this.onWfADLoad(this.f58484g);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached() {
            y.this.f58480r = true;
            y yVar = y.this;
            yVar.f58369k = false;
            yVar.onWfVideoCached();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            y.this.onWfInitSuccess();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached(TTFullScreenVideoAd ttFullScreenVideoAd) {
            y.this.f58480r = true;
            y yVar = y.this;
            yVar.f58369k = false;
            yVar.onWfVideoCached();
        }
    }
}
