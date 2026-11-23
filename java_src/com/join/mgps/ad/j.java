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
import com.windmill.sdk.utils.UIUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class j extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TTAdNative f58390o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TTFullScreenVideoAd f58391p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdSlot f58392q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f58393r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f58394s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f58395t;

    class a implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClose() {
            d.h(j.this.f58359a, 3);
            j.this.onWfADClose();
            j jVar = j.this;
            jVar.onWfADClose(jVar.f58364f);
            j jVar2 = j.this;
            jVar2.onWfADClose(jVar2.f58364f, jVar2.f58365g, jVar2.f58366h);
            j jVar3 = j.this;
            jVar3.onWfADClose(jVar3.f58364f, jVar3.f58365g, jVar3.f58366h, jVar3.f58370l);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdShow() {
            j.this.f58393r = false;
            d.h(j.this.f58359a, 1);
            j.this.onWfADShow();
            j.this.e();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdVideoBarClick() {
            d.h(j.this.f58359a, 2);
            h1.c(j.this.f58362d, "rewardVideoAd bar click");
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
            j.this.f();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoComplete() {
            d.h(j.this.f58359a, 4);
            j.this.onWfVideoComplete();
        }
    }

    public j(Context ctx, String appId, String posId) {
        super("GroMore", ctx, appId, posId);
        this.f58393r = false;
    }

    private void w(boolean b10) {
        this.f58392q = new AdSlot.Builder().setCodeId(this.f58361c).setAdCount(1).setImageAcceptedSize(UIUtils.getScreenWidthInPx(this.f58359a), UIUtils.getScreenHeightInPx(this.f58359a)).setAdLoadType(b10 ? TTAdLoadType.LOAD : TTAdLoadType.PRELOAD).setUserID("user123").setMediaExtra("media_extra").build();
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        if (this.f58394s == null) {
            this.f58394s = new b();
        }
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        com.join.mgps.ad.adapter.f.d(this.f58359a, this.f58360b, new e6.a() { // from class: com.join.mgps.ad.i
            @Override // e6.a
            public final void a() {
                this.f58389a.onWfInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RewardVideoAd:");
            sb2.append(this.f58391p != null);
            sb2.append("hasLoaded:");
            sb2.append(this.f58393r);
        }
        return this.f58391p != null && this.f58393r;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        try {
            if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
                return;
            }
            this.f58393r = false;
            if (d.f58357m) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("load:");
                sb2.append(showAd);
            }
            w(showAd);
            if (this.f58394s == null) {
                this.f58394s = new b();
            }
            this.f58394s.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            if (this.f58390o == null && TTAdSdk.getAdManager() != null) {
                this.f58390o = TTAdSdk.getAdManager().createAdNative(this.f58359a);
            }
            TTAdNative tTAdNative = this.f58390o;
            if (tTAdNative != null) {
                tTAdNative.loadFullScreenVideoAd(this.f58392q, this.f58394s);
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
        if (this.f58395t == null) {
            this.f58395t = new a();
        }
        this.f58391p.setFullScreenVideoAdInteractionListener(this.f58395t);
        this.f58391p.showFullScreenVideoAd(activity);
        this.f58391p = null;
    }

    class b implements TTAdNative.FullScreenVideoAdListener, TTAdSdk.InitCallback {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f58397g = false;

        b() {
        }

        public void a(boolean showAd) {
            this.f58397g = showAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int code, String msg) {
            j jVar = j.this;
            Map<String, Object> map = jVar.f58370l;
            if (map != null) {
                d.i(jVar.f58359a, 5, map);
            } else {
                d.h(jVar.f58359a, 5);
            }
            j.this.onWfError(code, msg);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onError(int code, String message) {
            j.this.f58393r = false;
            j jVar = j.this;
            jVar.f58369k = false;
            Map<String, Object> map = jVar.f58370l;
            if (map != null) {
                d.i(jVar.f58359a, 5, map);
            } else {
                d.h(jVar.f58359a, 5);
            }
            j.this.onWfError(code, message);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoAdLoad(TTFullScreenVideoAd ttFullScreenVideoAd) {
            h1.c(j.this.f58362d, "rewardVideoAd loaded");
            j.this.f58393r = true;
            j jVar = j.this;
            jVar.f58369k = false;
            jVar.f58391p = ttFullScreenVideoAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached() {
            h1.c(j.this.f58362d, "rewardVideoAd video cached");
            j.this.f58393r = true;
            j jVar = j.this;
            jVar.f58369k = false;
            jVar.onWfVideoCached();
            j.this.onWfADLoad(this.f58397g);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            j.this.onWfInitSuccess();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached(TTFullScreenVideoAd ttFullScreenVideoAd) {
            j.this.f58393r = true;
            j jVar = j.this;
            jVar.f58369k = false;
            jVar.f58391p = ttFullScreenVideoAd;
            j.this.onWfVideoCached();
        }
    }
}
